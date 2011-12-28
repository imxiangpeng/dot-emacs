
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
 '(calendar-latitude 40)
 '(calendar-longitude 116)
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
 '(dired-guess-shell-alist-user (quote (("\\.[0-9]$" (progn (require (quote man)) (if (Man-support-local-filenames) "man -l" "cat * | groff -man -T utf8 | ul"))) ("\\.[0-9].gz$" (progn (require (quote man)) (if (Man-support-local-filenames) "man -l" "gunzip -qc * | groff -man -T utf8 | ul"))))))
 '(dired-omit-files "^\\.#.*$\\|^#.*#$\\|^\\.$\\|^\\.DS_Store$\\|^\\.\\.$")
 '(django-test-setting "vote.tests.settings")
 '(edebug-trace t)
 '(emms-player-list (quote (emms-player-mplayer)))
 '(emms-stream-default-action "play")
 '(enable-local-eval t)
 '(eol-mnemonic-dos "(d\\r\\n)")
 '(eol-mnemonic-mac "(m\\r)")
 '(fast-wiki-minor-mode-string " wk")
 '(file-cache-filter-regexps (quote ("~$" "\\.o$" "\\.exe$" "\\.a$" "\\.elc$" ",v$" "\\.output$" "\\.$" "#$" "\\.class$" "\\.DS_Store$" "\\.gif$" "\\.pdf$" "\\.png$" "\\.jpg$" "\\.gitignore$")))
 '(fill-column 70)
 '(find-function-C-source-directory "~/local/src/emacs-current/src" t)
 '(find-grep-options "-vE \".svn|drw|svn-base|*.pyc\"")
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
 '(grep-find-command "find . -type f -a ! -name \"*.o\" -a ! -name \"*.pyc\" -a ! -name \"*.elc\" -a ! -name \"*.u.js\" -a ! -name \"*.g.js\" -a ! -name \"*_min.css\" |grep -vE \"BROWSE|TAGS|.svn|drw|.bzr|.git|svn-base|z.js|z_min.js\" |sed -e 's+ +\\\\\\\\ +g'|xargs grep -niHE ")
 '(grep-highlight-matches t)
 '(gud-gdb-command-name (concat "gdb-darwin -annotate=3 -silent -x ~/etc/el/gdb/init.gdb  -x " (expand-file-name "~/local/src/chromium/src/v8/dbg_agent.gdb")))
 '(gud-pdb-command-name "/usr/lib/python2.5/pdb.py")
 '(gud-rdebug-command-name "rdebug --emacs 3 ~/local/src/uki-tools/bin/uki run -- localhost:21119")
 '(gud-tooltip-echo-area t)
 '(hippie-expand-try-functions-list (quote (try-complete-file-name-partially try-complete-file-name try-expand-line try-expand-all-abbrevs try-expand-list try-complete-lisp-symbol-partially try-complete-lisp-symbol)))
 '(hippie-expand-verbose t)
 '(htmlize-html-charset "utf-8")
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
 '(ibuffer-saved-filter-groups (quote (("normal" ("emacs" (or (mode . Custom-mode) (mode . lisp-interaction-mode) (mode . emacs-lisp-mode))) ("console" (or (mode . debugger-mode) (mode . comint-mode) (mode . reb-mode) (mode . inferior-ess-mode) (mode . inf-ruby-mode) (mode . shell-mode) (mode . inferior-moz-mode))) ("result" (or (mode . anything-mode) (mode . ediff-meta-mode) (mode . ediff-mode) (mode . occur-mode) (mode . compilation-mode) (name . "^\\*pP") (mode . grep-mode) (mode . completion-list-mode) (mode . apropos-mode) (name . "rct-result") (name . "*rct-compilation*") (name . "^\\*rake") (mode . term-mode))) ("debugger" (or (name . "^*gud") (name . "^*edebug") (name . "^*locals") (name . "^*register") (name . "^*stack") (name . "^*breakpoints") (name . "^*input") (name . "^*disassembly") (name . "^*threads") (name . "^*memory") (name . "^*rdebug"))) ("log" (or (name . "\\.log$") (name . "_log"))) ("help" (or (name . "^readme") (name . "^ri") (mode . help-mode) (mode . Info-mode) (mode . Man-mode) (mode . woman-mode) (mode . ess-help-mode))) ("irc" (or (mode . rcirc-mode))) ("tags" (or (name . "^TAGS") (mode . tags-table-mode))) ("org" (or (name . "^\\*Org") (mode . calendar-mode) (mode . org-mode))) ("ver" (or (mode . vc-annotate-mode) (name . "^\\*VC") (mode . vc-mode) (name . "^\\*magit"))) ("dir" (or (mode . dired-mode) (mode . archive-mode)))))))
 '(ibuffer-saved-filters (quote (("irc" (or (mode . rcirc-mode))) ("console" ((or (mode . debugger-mode) (mode . comint-mode) (mode . reb-mode) (mode . inferior-ess-mode) (mode . inf-ruby-mode) (mode . shell-mode) (mode . inferior-moz-mode)))) ("tags" (or (name . "^TAGS") (mode . tags-table-mode))) ("emacs" (or (mode . Custom-mode) (mode . lisp-interaction-mode) (mode . emacs-lisp-mode))) ("result" (or (mode . anything-mode) (mode . ediff-meta-mode) (mode . ediff-mode) (mode . occur-mode) (mode . compilation-mode) (name . "^\\*pP") (mode . grep-mode) (mode . completion-list-mode) (mode . apropos-mode) (name . "rct-result") (name . "*rct-compilation*") (name . "^\\*rake") (mode . term-mode))) ("debugger" (or (name . "^*gud") (name . "^*edebug") (name . "^*locals") (name . "^*register") (name . "^*stack") (name . "^*breakpoints") (name . "^*input") (name . "^*disassembly") (name . "^*threads") (name . "^*memory") (name . "^*rdebug"))) ("log" (or (name . "\\.log$") (name . "_log"))) ("org" ((or (name . "^\\*Org") (mode . calendar-mode) (mode . org-mode)))) ("ver" ((or (mode . vc-annotate-mode) (name . "^\\*VC") (mode . vc-mode) (name . "^\\*magit")))) ("help" (or (name . "^readme") (name . "^ri") (mode . help-mode) (mode . Info-mode) (mode . Man-mode) (mode . woman-mode) (mode . ess-help-mode))) ("dir" (or (mode . dired-mode) (mode . archive-mode))))))
 '(icicle-apropos-cycle-next-keys (quote ([next])))
 '(ido-create-new-buffer (quote always))
 '(ido-enable-flex-matching t)
 '(ido-max-prospects 96)
 '(ido-max-window-height 5)
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
 '(load-path (quote ("/Users/bartuer/etc/el/ess/" "/Users/bartuer/etc/el/vendor/rinari/util/jump/" "/Users/bartuer/etc/el/vendor/rinari/util/" "/Users/bartuer/etc/el/vendor/rinari/" "/Users/bartuer/etc/el" "/Users/bartuer/etc/el/icicles" "~/etc/el" "~/etc/el/auto-install" "~/etc/el/ess" "~/etc/el/icicles" "~/etc/el/org" "~/etc/el/vendor/cheat" "~/etc/el/vendor/gist" "~/etc/el/vendor/magit" "~/etc/el/vendor/rcodetools" "~/etc/el/vendor/rhtml" "~/etc/el/vendor/rinari/" "~/etc/el/vendor/rinari/jump" "~/etc/el/vendor/rinari/util" "~/etc/el/vendor/rinari/util/" "~/etc/el/vendor/rinari/util/jump/" "~/etc/el/vendor/textile-minor-mode/" "~/etc/el/vendor/yasnippet" "~etc/el/vendor/yaml-mode/trunk" "~/etc/el/vendor/erlang" "~/etc/el/vendor/erlang/share/distel/elisp" "~/etc/el/vendor/tuareg" "~/local/share/emacs/current/leim" "~/local/share/emacs/current/lisp" "~/local/share/emacs/current/lisp/calc" "~/local/share/emacs/current/lisp/calendar" "~/local/share/emacs/current/lisp/emacs-lisp" "~/local/share/emacs/current/lisp/emulation" "~/local/share/emacs/current/lisp/erc" "~/local/share/emacs/current/lisp/eshell" "~/local/share/emacs/current/lisp/gnus" "~/local/share/emacs/current/lisp/international" "~/local/share/emacs/current/lisp/language" "~/local/share/emacs/current/lisp/mail" "~/local/share/emacs/current/lisp/mh-e" "~/local/share/emacs/current/lisp/net" "~/local/share/emacs/current/lisp/nxml" "~/local/share/emacs/current/lisp/nxml/char-name" "~/local/share/emacs/current/lisp/nxml/char-name/unicode" "~/local/share/emacs/current/lisp/obsolete" "~/local/share/emacs/current/lisp/org" "~/local/share/emacs/current/lisp/play" "~/local/share/emacs/current/lisp/progmodes" "~/local/share/emacs/current/lisp/textmodes" "~/local/share/emacs/current/lisp/toolbar" "~/local/share/emacs/current/lisp/url" "~/local/share/emacs/current/site-lisp" "~/local/share/emacs/current/site-lisp/emms" "~/local/share/emacs/site-lisp")) t)
 '(lpr-command "~/scripts/pdfprint")
 '(mail-send-hook (quote (quote-encoded-subject)))
 '(make-backup-files nil)
 '(markdown-command "markdown -x codehilite /dev/stdin")
 '(max-mini-window-height 0.7)
 '(mm-body-charset-encoding-alist (quote ((utf-8 . 7bit) (iso-2022-jp-2 . 7bit) (utf-16 . base64) (utf-16be . base64) (utf-16le . base64))))
 '(mode-require-final-newline nil)
 '(next-line-add-newlines nil)
 '(next-screen-context-lines 0)
 '(org-agenda-columns-add-appointments-to-effort-sum t)
 '(org-agenda-files (quote ("/Users/bartuer/local/src/bew/bew.org" "/Users/bartuer/local/src/xrb/xrb.org" "/Users/bartuer/local/src/yogi/yogi.org" "/Users/bartuer/local/src/cells/cells.txt" "/Users/bartuer/local/src/re2c_hw_bench/css.org" "/Users/bartuer/local/src/bartuer.github.com/progress_bar.org" "/Users/bartuer/org/quote.org" "/Users/bartuer/org/diary.org" "/Users/bartuer/org/note.org_archive" "/Users/bartuer/org/note.org" "/Users/bartuer/local/src/ccdv/ccdv.org" "/Users/bartuer/local/src/widget/sense/audio.org" "/Users/bartuer/local/src/realtime/realtime.org" "/Users/bartuer/local/src/widget/card/application.org" "/Users/bartuer/local/src/widget/card/image.org" "/Users/bartuer/local/src/frototype/frototype.org" "/Users/bartuer/local/src/widget/sense/sense.org" "/Users/bartuer/local/src/widget/card/card.org" "/Users/bartuer/local/src/buddy/plan.org" "/Users/bartuer/local/src/deal/deal.org" "/Users/bartuer/org/demo.org" "/Users/bartuer/local/src/uki-imageCutter/imagecutter.org" "/Users/bartuer/local/src/uki-imageCutter/file_input_in_runtime.org" "/Users/bartuer/local/src/pass/pass.org" "/Users/bartuer/local/src/bla/zaphinx.org" "/Users/bartuer/local/src/pullee/pullee.org" "/Users/bartuer/local/src/morus/morus.org" "/Users/bartuer/org/next.org" "/Users/bartuer/local/src/baza/sbs.org" "/Users/bartuer/local/src/widget/collectionview/collectionview.org")))
 '(org-archive-save-context-info (quote (time file category todo itags olpath ltags)))
 '(org-clock-idle-time 30)
 '(org-columns-default-format "%40ITEM(Task) %15Effort(EFFORT){:} %SCHEDULED(SCHEDULE) %22DEADLINE(DEADLINE) %CLOCK(CLOCK)")
 '(org-completion-use-ido t)
 '(org-file-apps (quote ((auto-mode . emacs) ("\\.mm\\'" . default) ("\\.x?html?\\'" . default) ("\\.pdf\\'" . default) ("m4v" . "/usr/bin/qlmanage -p %s") ("png" . "qlmanage -p %s") ("mov" . "qlmanage -p %s"))))
 '(org-hide-leading-stars t)
 '(org-odd-levels-only t)
 '(org-outline-path-complete-in-steps nil)
 '(org-refile-targets (quote (("~/local/src/baza/sbs.org" :tag . "research") ("~/local/src/baza/sbs.org" :tag . "design") ("~/local/src/baza/sbs.org" :tag . "checklist") ("~/local/src/baza/sbs.org" :tag . "bug") ("~/local/src/baza/sbs.org" :tag . "feature") ("~/local/src/baza/sbs.org" :tag . "tool") ("~/local/src/baza/sbs.org" :tag . "lib") ("~/local/src/baza/sbs.org" :tag . "deployment") ("~/local/src/baza/sbs.org" :tag . "beta") ("~/local/src/baza/sbs.org" :tag . "alpha"))))
 '(org-tag-alist (quote (("bug" . 98) ("finding" . 102) ("data" . 100) ("push" . 112) ("summary" . 115) ("research" . 114) ("fix" . 120) ("meeting" . 109) ("trip" . 116) ("build" . 117) ("buy" . 36) ("baza" . 106) ("hack" . 104) ("feature" . 110) ("deployment" . 101))))
 '(org-todo-keyword-faces (quote (("ABORT" . "white"))))
 '(org-todo-keywords (quote ((sequence "TODO" "HALT" "ABORT" "DONE"))))
 '(org-use-speed-commands t)
 '(ps-lpr-command "lp")
 '(ps-multibyte-buffer (quote bdf-font))
 '(push-minor-mode-string " Pu")
 '(rcirc-server-alist (quote (("irc.freenode.net" :channels ("#rcirc")))))
 '(rdebug-many-windows nil)
 '(rdebug-short-key-mode nil)
 '(reb-auto-match-limit 8000)
 '(reload-minor-mode-string " Reload")
 '(remember-annotation-functions (quote (org-remember-annotation)))
 '(rst-level-face-base-color "")
 '(safe-local-eval-forms (quote ((add-hook (quote write-file-hooks) (quote time-stamp)) (add-hook (quote after-save-hook) (lambda nil (org-export-as-html 3))) (lambda nil (org-export-as-html 3)))))
 '(safe-local-variable-values (quote ((save-as-html lambda nil (org-export-as-html 3)) (write-contents-files lambda nil (org-export-as-html 3)) (erlang-indent-level . 4) (erlang-indent-level . 2) (require-final-newline) (backup-inhibited . t) (ruby-compilation-executable . "ruby") (ruby-compilation-executable . "ruby1.8") (ruby-compilation-executable . "ruby1.9") (ruby-compilation-executable . "rbx") (ruby-compilation-executable . "jruby") (minor-mode . clearcase-dired) (TeX-command-default . "CJKLaTeX") (TeX-header-end . "%+ *[Ee]nd[ -]*[oO]f[ -]*[hH]eader") (TeX-trailer-start . "%+ *[Ss]tart[ -]*[oO]f[ -]*[tT]railer") (TeX-command-default . "CLaTeX") (TeX-master . t))))
 '(scroll-conservatively 10)
 '(search-whitespace-regexp "[ 	
]+")
 '(sgml-tag-alist (quote (("![" ("ignore" t) ("include" t)) ("!attlist") ("!doctype") ("!element") ("!entity"))))
 '(size-indication-mode t)
 '(smtpmail-auth-credentials "~/.authinfo")
 '(smtpmail-debug-info t)
 '(smtpmail-debug-verb t)
 '(smtpmail-local-domain "gmail.com")
 '(smtpmail-sendto-domain "gmail.com")
 '(smtpmail-smtp-server "smtp.gmail.com")
 '(smtpmail-smtp-service 587)
 '(smtpmail-starttls-credentials (quote (("smtp.gmail.com" 587 "  " ""))))
 '(transient-mark-mode t)
 '(user-mail-address "bartuer@gmail.com")
 '(vc-handled-backends (quote (Git RCS CVS SVN SCCS Bzr Hg Mtn Arch)))
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
 '(org-column ((t (:background "black" :foreground "cyan" :strike-through nil :underline nil :slant normal :weight normal :height 1 :family "default"))))
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
