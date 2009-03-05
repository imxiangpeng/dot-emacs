(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(after-save-hook (quote (executable-make-buffer-file-executable-if-script-p)))
 '(auto-compression-mode t nil (jka-compr))
 '(blink-cursor-mode t)
 '(bookmark-default-file "~/etc/el/bookmark/.emacs.bmk")
 '(bookmark-save-flag 1)
 '(case-fold-search t)
 '(case-replace nil)
 '(colon-double-space t)
 '(column-number-mode t)
 '(comint-completion-autolist t)
 '(comint-input-autoexpand t)
 '(compilation-ask-about-save nil)
 '(compilation-auto-jump-to-first-error t)
 '(current-language-environment "UTF-8")
 '(default-input-method "chinese-py-punct")
 '(describe-char-unidata-list (quote (name general-category canonical-combining-class bidi-class decomposition decimal-digit-value digit-value numeric-value mirrored old-name iso-10646-comment uppercase lowercase titlecase)))
 '(desktop-path (quote ("~/etc/el/session" "~" ".")))
 '(django-test-setting "vote.tests.settings")
 '(edebug-trace t)
 '(emms-player-list (quote (emms-player-mplayer)))
 '(emms-stream-default-action "play")
 '(eol-mnemonic-dos "(d\\r\\n)")
 '(eol-mnemonic-mac "(m\\r)")
 '(fill-column 70)
 '(find-function-C-source-directory "/home/bartuer/src/emacs/src/emacs" t)
 '(find-grep-options "-vE \".svn|drw|svn-base|*.pyc\"")
 '(find-ls-option (quote ("-exec ls -ld {} \\;" . "-ld")))
 '(gdb-debug-log-max nil)
 '(gdb-enable-debug t)
 '(gdb-find-source-frame t)
 '(gdb-many-windows t)
 '(gdb-max-frames 60)
 '(gdb-memory-repeat-count 64)
 '(gdb-speedbar-auto-raise t)
 '(gdb-use-separate-io-buffer t)
 '(global-font-lock-mode t nil (font-lock))
 '(grep-find-command "find . -type f  |grep -vE \"BROWSE|TAGS|.svn|drw|Binary|.bzr|svn-base|*.pyc\" |xargs grep -niHE ")
 '(grep-highlight-matches t)
 '(gud-gdb-command-name "ssh root@192.168.1.2 LD_LIBRARY_PATH=/mnt/msc_int0/lib /mnt/msc_int0/bin/gdb -annotate=3 -q -x /vobs/gdb/init.gdb  ")
 '(gud-pdb-command-name "/usr/lib/python2.5/pdb.py")
 '(hippie-expand-try-functions-list (quote (try-complete-file-name-partially try-complete-file-name try-expand-line try-expand-all-abbrevs try-expand-list try-complete-lisp-symbol-partially try-complete-lisp-symbol)))
 '(hippie-expand-verbose t)
 '(ibuffer-saved-filter-groups (quote (("urls" ("urls" (name . "urls"))))))
 '(ibuffer-saved-filters (quote (("objc" (mode . objc-mode)) ("gnus" ((or (mode . message-mode) (mode . mail-mode) (mode . gnus-group-mode) (mode . gnus-summary-mode) (mode . gnus-article-mode)))) ("programming" ((or (mode . emacs-lisp-mode) (mode . cperl-mode) (mode . c-mode) (mode . java-mode) (mode . idl-mode) (mode . lisp-mode)))))))
 '(icicle-apropos-cycle-next-keys (quote ([next])))
 '(ido-create-new-buffer (quote always))
 '(indent-tabs-mode nil)
 '(isearch-resume-in-command-history t)
 '(kill-read-only-ok t)
 '(line-number-mode t)
 '(list-matching-lines-default-context-lines 0)
 '(load-path (quote ("~/etc/el" "~/etc/el/icicles" "~/etc/el/ess" "~/local/share/emacs/23.0.60/site-lisp" "~/local/share/emacs/site-lisp" "~/local/share/emacs/23.0.60/lisp" "~/local/share/emacs/23.0.60/lisp/url" "~/local/share/emacs/23.0.60/lisp/toolbar" "~/local/share/emacs/23.0.60/lisp/textmodes" "~/local/share/emacs/23.0.60/lisp/progmodes" "~/local/share/emacs/23.0.60/lisp/play" "~/local/share/emacs/23.0.60/lisp/org" "~/local/share/emacs/23.0.60/lisp/obsolete" "~/local/share/emacs/23.0.60/lisp/nxml" "~/local/share/emacs/23.0.60/lisp/nxml/char-name" "~/local/share/emacs/23.0.60/lisp/nxml/char-name/unicode" "~/local/share/emacs/23.0.60/lisp/net" "~/local/share/emacs/23.0.60/lisp/mh-e" "~/local/share/emacs/23.0.60/lisp/mail" "~/local/share/emacs/23.0.60/lisp/language" "~/local/share/emacs/23.0.60/lisp/international" "~/local/share/emacs/23.0.60/lisp/gnus" "~/local/share/emacs/23.0.60/lisp/eshell" "~/local/share/emacs/23.0.60/lisp/erc" "~/local/share/emacs/23.0.60/lisp/emulation" "~/local/share/emacs/23.0.60/lisp/emacs-lisp" "~/local/share/emacs/23.0.60/lisp/calendar" "~/local/share/emacs/23.0.60/lisp/calc" "~/local/share/emacs/23.0.60/leim" "~/local/share/emacs/23.0.60/site-lisp/emms")) t)
 '(make-backup-files nil)
 '(max-mini-window-height 0.7)
 '(next-line-add-newlines nil)
 '(next-screen-context-lines 0)
 '(org-hide-leading-stars t)
 '(org-odd-levels-only t)
 '(ps-multibyte-buffer (quote bdf-font))
 '(rcirc-server-alist (quote (("irc.freenode.net" :channels ("#rcirc")))))
 '(rst-level-face-base-color "")
 '(safe-local-variable-values (quote ((minor-mode . clearcase-dired) (TeX-command-default . "CJKLaTeX") (TeX-header-end . "%+ *[Ee]nd[ -]*[oO]f[ -]*[hH]eader") (TeX-trailer-start . "%+ *[Ss]tart[ -]*[oO]f[ -]*[tT]railer") (TeX-command-default . "CLaTeX") (TeX-master . t))))
 '(scroll-conservatively 10)
 '(search-whitespace-regexp "[ 	
]+")
 '(size-indication-mode t)
 '(transient-mark-mode t)
 '(user-mail-address "bartuer@gmail.com")
 '(view-read-only t))
 
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(button ((((supports :underline t)) (:foreground "cyan" :underline t))))
 '(comint-highlight-prompt ((t (:foreground "cyan"))))
 '(cursor ((t (:foreground "white"))))
 '(custom-comment-tag ((((class color) (background light)) (:foreground "cyan"))))
 '(flymake-errline ((((class color)) (:inverse-video t))))
 '(flymake-warnline ((t (:underline t))))
 '(icicle-candidate-part ((((background dark)) (:foreground "red"))))
 '(icicle-complete-input ((((background dark)) (:foreground "green"))))
 '(icicle-current-candidate-highlight ((((background dark)) (:foreground "green"))))
 '(icicle-search-context-level-4 ((((background dark)) nil)))
 '(icicle-search-context-level-8 ((((background dark)) nil)))
 '(icicle-special-candidate ((((background dark)) nil)))
 '(link ((((class color) (background light)) (:foreground "cyan" :underline t))))
 '(mode-line ((t (:inverse-video t))))
 '(mode-line-buffer-id ((t (:background "yellow" :foreground "green" :weight bold))))
 '(mode-line-inactive ((default (:inherit mode-line)) (nil (:inverse-video nil))))
 '(org-agenda-structure ((t (:foreground "cyan" :weight bold))))
 '(org-drawer ((t (:foreground "cyan" :weight bold))))
 '(org-level-1 ((t (:foreground "cyan"))))
 '(org-level-7 ((t (:foreground "cyan"))))
 '(which-func ((((background dark)) (:background "yellow" :foreground "green")))))
