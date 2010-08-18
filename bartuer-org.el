(defun bartuer-org-insert-child ()
  "insert a child"
  (interactive)
  (org-insert-heading-after-current)
  (org-do-demote))

(defun org-effort-allowed-property-values (property)
  "Supply allowed values for Effort properties."
  (cond
   ((equal property "Effort")
    '("0:05" "0:10" "0:15" "0:20" "0:30" "0:45" "1:00" "1:30" "2:00" "3:00" "4:00" "5:00" "6:00" "8:00"))
   (t nil)))


(defun bartuer-capture-insert-link ()
  (interactive)
  (with-current-buffer (get-buffer-create "*org-link-temp*")
    (org-insert-link)
    (setq org-currnet-link-string (buffer-substring (point-min) (point-max)))
    (kill-region (point-min) (point-max)))
  org-currnet-link-string
)

(defun bartuer-setup-capture ()
  "capture templates"
  (interactive)
  (setq org-capture-templates
      '(("d" "Debug" entry (file+headline "~/org/next.org" "Debuging")
             "* TODO %?\n  %^{SCHEDULED}p\n  %a\n  %i\n")
        ("f" "Fix" entry (file+headline "~/org/next.org" "Fixing")
             "* TODO %?\n  %^{SCHEDULED}p\n  %i\n")
        ("$" "Buy" entry (file+headline "~/org/next.org" "Buying")
             "* TODO %?\n  %^{SCHEDULED}p\n  %i\n")
        ("b" "Build" entry (file+headline "~/org/next.org" "Building")
             "* TODO %?\n  %^{SCHEDULED}p\n  %i\n")
        ("h" "Hack" entry (file+headline "~/org/next.org" "Hacking")
             "* TODO %?\n  %^{SCHEDULED}p\n  %a\n  %i\n")
        ("m" "Meet" entry (file+headline "~/org/next.org" "Meeting")
             "* TODO %?\n %a %^{SCHEDULED}p\n  %i\n")
        ("s" "Research" entry (file+headline "~/org/next.org" "Researching")
             "* TODO %?\n  %^{SCHEDULED}p\n  %(bartuer-capture-insert-link)\n  %i\n")
        ("r" "Read" entry (file+headline "~/org/next.org" "Reading")
             "* TODO %?\n  %^{SCHEDULED}p\n  %(bartuer-capture-insert-link)\n  %i\n")
        ("w" "Watch" entry (file+headline "~/org/next.org" "Watching")
             "* TODO %?\n  %^{SCHEDULED}p\n  %(bartuer-capture-insert-link)\n  %i\n")
        ("t" "Todo" entry (file+headline "~/org/next.org" "!Category")
             "* TODO %?\n  %^{SCHEDULED}p\n  %i\n")
        ("c" "Capture" plain (file "~/org/quote.org")
             "* %?\n%U\n%c\n%i\n")
        ("j" "Journey" plain (file+datetree "~/org/diary.org")
             "      - %?\n       %U\n  %i\n")
        )))

(defun bartuer-jump-to-archive ()
  (interactive)
  (find-file (org-extract-archive-file)))

(defun bartuer-org-load ()
  "for org mode"
  (defalias 'ar 'bartuer-jump-to-archive)
  (global-set-key "\C-cl" 'org-store-link)
  (global-set-key "\C-ca" 'org-agenda)
  (global-set-key "\C-cb" 'org-sparse-tree)
  (global-set-key "\C-cu" 'org-insert-link-global)
  (global-set-key "\C-co" 'org-open-at-point-global)
  (turn-on-font-lock)
  (define-key org-mode-map "\C-\M-u" (lambda ()
                                       (interactive)
                                       (org-up-heading-safe)))
  (define-key org-mode-map "\C-j" 'org-meta-return)
  (define-key org-mode-map "\C-c\C-a" 'org-archive-subtree)
  (define-key org-mode-map "\C-\M-i" 'org-table-previous-field)
  (define-key org-mode-map "[" (lambda ()
                                 (interactive)
                                 (insert "[ ] ")))
  (define-key org-mode-map "]" (lambda ()
                                 (interactive)
                                 (insert " [0/0]")))
  (define-key org-mode-map "<backtab>" 'org-shifttab)
  (define-key org-mode-map "\C-\M-c" 'bartuer-org-insert-child)
  ;; add a hook when saving also export to a html
  ;; setup a webserver, can quick access one page org content locally
  (setq org-link-abbrev-alist
        '(("gfcn" . "http://www.google.com/finance?fstype=ii&q=%s&gl=cn")
          ("gf" . "http://www.google.com/finance?q=%s")
          ("rt" . "http://www.reuters.com/finance/stocks/overview?symbol=%s")))
  (add-to-list 'org-property-allowed-value-functions 'org-effort-allowed-property-values)
)