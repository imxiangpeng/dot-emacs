
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(PC-meta-flag nil)
 '(after-save-hook (quote (executable-make-buffer-file-executable-if-script-p)))
 '(auto-compression-mode t nil (jka-compr))
 '(auto-revert-verbose nil)
 '(blink-cursor-mode t)
 '(bookmark-default-file "~/etc/el/bookmark/.emacs.bmk")
 '(bookmark-save-flag 1)
 '(case-fold-search t)
 '(case-replace t)
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
 '(dired-omit-files "^\\.#.*$\\|^#.*#$\\|^\\.$\\|^\\.DS_Store$\\|^\\.\\.$")
 '(django-test-setting "vote.tests.settings")
 '(edebug-trace t)
 '(emms-player-list (quote (emms-player-mplayer)))
 '(emms-stream-default-action "play")
 '(eol-mnemonic-dos "(d\\r\\n)")
 '(eol-mnemonic-mac "(m\\r)")
 '(file-cache-filter-regexps (quote ("~$" "\\.o$" "\\.exe$" "\\.a$" "\\.elc$" ",v$" "\\.output$" "\\.$" "#$" "\\.class$" "\\.DS_Store$" "\\.gif$" "\\.pdf$" "\\.png$" "\\.jpg$" "\\.gitignore$")))
 '(fill-column 70)
 '(find-function-C-source-directory "~/local/src/emacs-23.1/src" t)
 '(find-grep-options "-vE \".svn|drw|svn-base|*.pyc|z.js|z_min.js\"")
 '(find-ls-option (quote ("-exec ls -ld {} \\;" . "-ld")))
 '(flymake-allowed-file-name-masks (quote (("\\.c\\'" flymake-simple-make-init) ("\\.m\\'" flymake-objc-init) ("Rakefile" flymake-ruby-init) ("\\.rb\\'" flymake-ruby-init) ("\\.js\\'" flymake-jslint-init) ("\\.xml\\'" flymake-xml-init) ("\\.plist\\'" flymake-xml-init) ("\\.html?\\'" flymake-jslint-init) ("\\.css" flymake-css-init) ("\\.cs\\'" flymake-simple-make-init) ("\\.cpp\\'" flymake-simple-make-init) ("\\.p[ml]\\'" flymake-perl-init) ("\\.php[345]?\\'" flymake-php-init) ("\\.h\\'" flymake-master-make-header-init flymake-master-cleanup) ("\\.java\\'" flymake-simple-make-java-init flymake-simple-java-cleanup) ("[0-9]+\\.tex\\'" flymake-master-tex-init flymake-master-cleanup) ("\\.tex\\'" flymake-simple-tex-init) ("\\.idl\\'" flymake-simple-make-init))))
 '(flymake-log-level -1)
 '(flymake-objc-compile-options (quote ("-I." "-F../Frameworks" "-I../Classes")))
 '(flyspell-use-meta-tab nil)
 '(gdb-debug-log-max 20)
 '(gdb-enable-debug t)
 '(gdb-find-source-frame t)
 '(gdb-many-windows t)
 '(gdb-max-frames 60)
 '(gdb-memory-repeat-count 64)
 '(gdb-speedbar-auto-raise t)
 '(gdb-use-separate-io-buffer t)
 '(global-font-lock-mode t nil (font-lock))
 '(global-mark-ring-max 32)
 '(grep-find-command "find . -type f  |grep -vE \"BROWSE|TAGS|.svn|drw|Binary|.bzr|svn-base|*.pyc\" |sed -e 's+ +\\\\ +g'|xargs grep -niHE ")
 '(grep-highlight-matches t)
 '(gud-gdb-command-name (concat "gdb-darwin -annotate=3 -silent -x ~/etc/el/gdb/init.gdb  -x " (expand-file-name "~/local/src/chromium/src/v8/dbg_agent.gdb")))
 '(gud-pdb-command-name "/usr/lib/python2.5/pdb.py")
 '(gud-tooltip-echo-area t)
 '(hippie-expand-try-functions-list (quote (try-complete-file-name-partially try-complete-file-name try-expand-line try-expand-all-abbrevs try-expand-list try-complete-lisp-symbol-partially try-complete-lisp-symbol)))
 '(hippie-expand-verbose t)
 '(htmlize-hyperlink-style "
      a {
        color: inherit;
        background-color: #000000;
        font: inherit;
        text-decoration: inherit;
      }
      a:hover {
        text-decoration: underline;
      }
")
 '(ibuffer-elide-long-columns nil)
 '(ibuffer-saved-filter (quote (nil)))
 '(ibuffer-saved-filter-groups (quote (("normal" ("emacs" (or (mode . Custom-mode) (mode . lisp-interaction-mode) (mode . emacs-lisp-mode))) ("console" (or (mode . debugger-mode) (mode . comint-mode) (mode . reb-mode) (mode . inferior-ess-mode) (mode . inf-ruby-mode) (mode . shell-mode) (mode . inferior-moz-mode))) ("result" (or (mode . anything-mode) (mode . ediff-meta-mode) (mode . ediff-mode) (mode . occur-mode) (mode . compilation-mode) (name . "^\\*pP") (mode . grep-mode) (mode . completion-list-mode) (mode . apropos-mode) (name . "rct-result") (name . "*rct-compilation*") (name . "^\\*rake") (mode . term-mode))) ("debugger" (or (name . "^*gud") (name . "^*edebug") (name . "^*locals") (name . "^*register") (name . "^*stack") (name . "^*breakpoints") (name . "^*input") (name . "^*disassembly") (name . "^*threads") (name . "^*memory") (name . "^*rdebug"))) ("log" (or (name . "\\.log$") (name . "_log"))) ("help" (or (name . "^readme") (name . "^ri") (mode . help-mode) (mode . Info-mode) (mode . Man-mode) (mode . woman-mode))) ("irc" (or (mode . rcirc-mode))) ("tags" (or (name . "^TAGS") (mode . tags-table-mode))) ("org" (or (name . "^\\*Org") (mode . calendar-mode) (mode . org-mode))) ("ver" (or (mode . vc-annotate-mode) (name . "^\\*VC") (mode . vc-mode) (name . "^\\*magit"))) ("dir" (or (mode . dired-mode) (mode . archive-mode)))))))
 '(ibuffer-saved-filters (quote (("irc" (or (mode . rcirc-mode))) ("console" ((or (mode . debugger-mode) (mode . comint-mode) (mode . reb-mode) (mode . inferior-ess-mode) (mode . inf-ruby-mode) (mode . shell-mode) (mode . inferior-moz-mode)))) ("tags" (or (name . "^TAGS") (mode . tags-table-mode))) ("emacs" (or (mode . Custom-mode) (mode . lisp-interaction-mode) (mode . emacs-lisp-mode))) ("result" (or (mode . anything-mode) (mode . ediff-meta-mode) (mode . ediff-mode) (mode . occur-mode) (mode . compilation-mode) (name . "^\\*pP") (mode . grep-mode) (mode . completion-list-mode) (mode . apropos-mode) (name . "rct-result") (name . "*rct-compilation*") (name . "^\\*rake") (mode . term-mode))) ("debugger" (or (name . "^*gud") (name . "^*edebug") (name . "^*locals") (name . "^*register") (name . "^*stack") (name . "^*breakpoints") (name . "^*input") (name . "^*disassembly") (name . "^*threads") (name . "^*memory") (name . "^*rdebug"))) ("log" (or (name . "\\.log$") (name . "_log"))) ("org" ((or (name . "^\\*Org") (mode . calendar-mode) (mode . org-mode)))) ("ver" ((or (mode . vc-annotate-mode) (name . "^\\*VC") (mode . vc-mode) (name . "^\\*magit")))) ("help" (or (name . "^readme") (name . "^ri") (mode . help-mode) (mode . Info-mode) (mode . Man-mode) (mode . woman-mode))) ("dir" (or (mode . dired-mode) (mode . archive-mode))))))
 '(icicle-apropos-cycle-next-keys (quote ([next])))
 '(ido-create-new-buffer (quote always))
 '(ido-enable-flex-matching t)
 '(ido-max-prospects 36)
 '(ido-max-window-height 4)
 '(indent-tabs-mode nil)
 '(isearch-resume-in-command-history t)
 '(js2-allow-member-expr-as-function-name t)
 '(js2-allow-rhino-new-expr-initializer t)
 '(js2-basic-offset 2)
 '(js2-highlight-level 3)
 '(js2-parse-minor-mode-string " Pa")
 '(kill-read-only-ok t)
 '(line-number-mode t)
 '(list-matching-lines-default-context-lines 0)
 '(load-path (quote ("~/etc/el/" "~/etc/el/ess/" "~/etc/el/ess/" "~/etc/el/vendor/textile-minor-mode/" "~/etc/el/vendor/rcodetools" "~/etc/el/auto-install" "~/etc/el/vendor/rinari/util/jump/" "~/etc/el/vendor/rinari/util/" "~/etc/el/vendor/rinari/" "~/etc/el" "~/etc/el/icicles" "~/etc/el/vendor/yasnippet" "~/etc/el/vendor/rinari/util/jump/" "~/etc/el/vendor/rinari/util/" "~/etc/el/vendor/rinari/" "~/etc/el/ess/" "~/etc/el" "~/etc/el/icicles" "~etc/el/vendor/yaml-mode/trunk" "~/etc/el/vendor/nxhtml/util" "~/etc/el/vendor/rhtml" "~/etc/el/vendor/rinari/" "~/etc/el/vendor/rinari/jump" "~/etc/el/vendor/rinari/util" "~/etc/el/vendor/magit" "~/etc/el/vendor/cheat" "~/etc/el/vendor/gist" "~/etc/el" "~/etc/el/icicles" "~/etc/el/ess" "~/local/share/emacs/23.1/site-lisp" "~/local/share/emacs/site-lisp" "~/local/share/emacs/23.1/lisp" "~/local/share/emacs/23.1/lisp/url" "~/local/share/emacs/23.1/lisp/toolbar" "~/local/share/emacs/23.1/lisp/textmodes" "~/local/share/emacs/23.1/lisp/progmodes" "~/local/share/emacs/23.1/lisp/play" "~/local/share/emacs/23.1/lisp/org" "~/local/share/emacs/23.1/lisp/obsolete" "~/local/share/emacs/23.1/lisp/nxml" "~/local/share/emacs/23.1/lisp/nxml/char-name" "~/local/share/emacs/23.1/lisp/nxml/char-name/unicode" "~/local/share/emacs/23.1/lisp/net" "~/local/share/emacs/23.1/lisp/mh-e" "~/local/share/emacs/23.1/lisp/mail" "~/local/share/emacs/23.1/lisp/language" "~/local/share/emacs/23.1/lisp/international" "~/local/share/emacs/23.1/lisp/gnus" "~/local/share/emacs/23.1/lisp/eshell" "~/local/share/emacs/23.1/lisp/erc" "~/local/share/emacs/23.1/lisp/emulation" "~/local/share/emacs/23.1/lisp/emacs-lisp" "~/local/share/emacs/23.1/lisp/calendar" "~/local/share/emacs/23.1/lisp/calc" "~/local/share/emacs/23.1/leim" "~/local/share/emacs/23.1/site-lisp/emms" "~/etc/el/")) t)
 '(make-backup-files nil)
 '(markdown-command "markdown -x codehilite /dev/stdin")
 '(max-mini-window-height 0.7)
 '(mode-require-final-newline nil)
 '(next-line-add-newlines nil)
 '(next-screen-context-lines 0)
 '(org-agenda-files (quote ("~/org/task.org" "~/org/plan.org" "~/org/emacs.org" "~/org/linux.org" "~/org/mac.org" "~/local/src/baza/sbs.org" "~/org/note.org")))
 '(org-hide-leading-stars t)
 '(org-odd-levels-only t)
 '(ps-multibyte-buffer (quote bdf-font))
 '(push-minor-mode-string " Pu")
 '(rcirc-server-alist (quote (("irc.freenode.net" :channels ("#rcirc")))))
 '(rdebug-many-windows nil)
 '(rdebug-short-key-mode nil)
 '(reload-minor-mode-string " Reload")
 '(remember-annotation-functions (quote (org-remember-annotation)))
 '(rst-level-face-base-color "")
 '(safe-local-variable-values (quote ((require-final-newline) (backup-inhibited . t) (ruby-compilation-executable . "ruby") (ruby-compilation-executable . "ruby1.8") (ruby-compilation-executable . "ruby1.9") (ruby-compilation-executable . "rbx") (ruby-compilation-executable . "jruby") (minor-mode . clearcase-dired) (TeX-command-default . "CJKLaTeX") (TeX-header-end . "%+ *[Ee]nd[ -]*[oO]f[ -]*[hH]eader") (TeX-trailer-start . "%+ *[Ss]tart[ -]*[oO]f[ -]*[tT]railer") (TeX-command-default . "CLaTeX") (TeX-master . t))))
 '(scroll-conservatively 10)
 '(search-whitespace-regexp "[ 	
]+")
 '(sgml-tag-alist (quote (("![" ("ignore" t) ("include" t)) ("!attlist") ("!doctype") ("!element") ("!entity"))))
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
 '(css-property ((t (:inherit font-lock-keyword-face))))
 '(cursor ((t (:foreground "white"))))
 '(custom-comment-tag ((((class color) (background light)) (:foreground "cyan"))))
 '(erb-face ((((class color) (min-colors 8)) nil)))
 '(flymake-errline ((((class color)) (:foreground "red"))))
 '(flymake-pos ((((class color)) (:background "yellow" :foreground "red"))))
 '(flymake-warnline ((t (:foreground "pink"))))
 '(flyspell-duplicate ((t (:underline t))))
 '(flyspell-duplicate-face ((t (:underline t))) t)
 '(flyspell-incorrect ((t (:underline "red"))))
 '(flyspell-incorrect-face ((t (:underline "red"))) t)
 '(font-lock-comment-face ((((class color) (min-colors 8) (background dark)) (:foreground "green"))))
 '(font-lock-variable-name-face ((((class color) (min-colors 8)) (:foreground "white" :weight light))))
 '(icicle-candidate-part ((((background dark)) (:foreground "red"))))
 '(icicle-complete-input ((((background dark)) (:foreground "green"))))
 '(icicle-current-candidate-highlight ((((background dark)) (:foreground "green"))))
 '(icicle-search-context-level-4 ((((background dark)) nil)))
 '(icicle-search-context-level-8 ((((background dark)) nil)))
 '(icicle-special-candidate ((((background dark)) nil)))
 '(js2-jsdoc-html-tag-delimiter-face ((((class color) (min-colors 8) (background dark)) (:foreground "yellow"))))
 '(link ((((class color) (background light)) (:foreground "cyan" :underline t))))
 '(magit-item-highlight ((nil (:foreground "green"))))
 '(magit-log-tag-label ((((class color) (background dark)) (:background "blue"))))
 '(magit-section-title ((t (:inherit magit-header :foreground "red" :weight bold))))
 '(mode-line ((t (:inverse-video t))))
 '(mode-line-buffer-id ((t (:background "yellow" :foreground "blue" :weight bold))))
 '(mode-line-inactive ((default (:inherit mode-line)) (nil (:inverse-video nil))))
 '(org-agenda-structure ((t (:foreground "cyan" :weight bold))))
 '(org-drawer ((t (:foreground "cyan" :weight bold))))
 '(org-level-1 ((t (:foreground "cyan"))))
 '(org-level-7 ((t (:foreground "cyan"))))
 '(org-link ((((class color) (background dark)) (:foreground "cyan" :underline t))))
 '(org-target ((((class color) (background dark)) (:foreground "cyan" :underline t))))
 '(reb-match-1 ((((class color) (background dark)) (:background "blue"))))
 '(speedbar-button-face ((((class color) (background dark)) (:foreground "cyan" :underline t))))
 '(which-func ((((background dark)) (:background "yellow" :foreground "blue"))))
 '(yas/field-highlight-face ((t (:background "blue"))))
 '(yas/mirror-highlight-face ((t (:background "blue")))))
