;;; need replace this version
(defun sql-to-orgtbl ()
  (interactive)
  (message "has insert select clause at end of sql-mode buffer?")
  (with-current-buffer (get-buffer-create "*sql2orgtbl*")
    (kill-region (point-min) (point-max)))
  (shell-command-on-region (point-min) (point-max) "rm -f /tmp/sqlite-org-convert.db && sqlite3 -csv /tmp/sqlite-org-convert.db"
                           "*sql2orgtbl*" nil (get-buffer-create "*sql2orgtbl-error"))
  (with-current-buffer "*sql2orgtbl*"
    (org-table-convert-region (point-min) (point-max) '(4))
    (org-mode)
    (goto-char (point-min)))
  (pop-to-buffer "*sql2orgtbl*")
  )

(defun connect-sqlite-i-buffer ()
  (interactive)
  (sql-sqlite)
  (sql-set-sqli-buffer-generally)
  )

(defun sql-send-buffer-dwim ()
  (interactive)
  (if (buffer-live-p sql-buffer)
      (sql-send-buffer)
    (shell-command-on-region (point-min) (point-max)
                             (concat "sqlite3 "
                                     (replace-regexp-in-string "sql" "db" (buffer-file-name)))))
  )

(defun bartuer-sql-load ()
  "for sql mode"
  (define-key sql-mode-map "\C-c\C-s" 'connect-sqlite-i-buffer)
  (define-key sql-mode-map "\C-c\C-e" 'sql-send-string)
  (define-key sql-mode-map "\C-c\C-t" 'sql-to-orgtbl)
  (define-key sql-mode-map "\C-c\C-b" 'sql-send-buffer-dwim))

(defun sqlite3-migrate-package (database_name)
  (let ((table_name (file-name-sans-extension (file-name-nondirectory database_name)))
        (dir (file-name-directory database_name)))
    (shell-command
     (message "%s" (format "echo '.dump' | sqlite3 %s | gzip -c > %s.sql.gz" database_name (concat dir table_name)))
     nil "*Messages*")
    )
  )

(defun convert-csv-to-sqlite3 (filename)
  (with-current-buffer (get-buffer-create (find-file filename))
    (let* ((table_name (file-name-sans-extension (file-name-nondirectory (buffer-file-name))))
           (database_name (concat table_name ".db"))
           (dir (file-name-directory filename))
           (head_line (save-excursion
                        (goto-char (point-min))
                        (buffer-substring-no-properties (save-excursion
                                                          (beginning-of-line 1) (point))
                                                        (save-excursion
                                                          (end-of-line) (point)))))
           (fields (nthcdr 0 (org-split-string head_line ","))))
      (shell-command (message
                      (if (file-exists-p database_name)
                          (format "sqlite3 %s 'drop table %s;create table %s(%s);'"
                                  database_name table_name table_name (mapconcat (lambda (f)
                                                                                   (concat f " TEXT")
                                                                                   ) fields ","))
                        (format "sqlite3 %s 'create table %s(%s);'"
                                database_name table_name (mapconcat (lambda (f)
                                                                      (concat f " TEXT")
                                                                      ) fields ","))
                        )))
      (goto-char (point-min))
      (forward-line)
      (let ((tmp (make-temp-file nil)))
        (write-region (point) (point-max) tmp)
        (shell-command
         (message (format "echo '.import %s %s' | sqlite3 -csv %s" tmp table_name (concat dir database_name))) nil "*Messages*")
      ))))

(defun convert-csv-to-org-lisp (&optional filename)
  (interactive)
  (with-current-buffer (find-file (if filename
                                      filename
                                    (buffer-file-name)))

    (save-excursion
      (goto-char (point-min))
      (org-table-convert-region (point-min) (point-max) '(4))
      (org-table-to-lisp)))
  )

(defun convert-csv-to-record-list (&optional filename query)
  (interactive "P")
  (setq convert-csv-where "")
  (let* ((query (if (or query (eq 4 (prefix-numeric-value filename)))
                         t
                       nil))
         (filename (if (stringp filename)
                       filename
                     (read-from-minibuffer "file : " (buffer-file-name))))
                  (table_name (file-name-sans-extension (file-name-nondirectory filename)))
         (database_name (concat table_name ".db"))
         (dir (file-name-directory filename))
         )
    (convert-csv-to-sqlite3 filename)
    (with-current-buffer
        (get-buffer-create (concat filename ".view"))
      (shell-command-on-region
       (point-min)
       (point-max)
       (message "%s" (concat (format "sqlite3 -line %s 'select %s from %s "
                                 (concat dir database_name)
                                 (if query
                                     (progn
                                       (setq convert-csv-where (read-from-minibuffer "where (field like \"%str\"): " ""))
                                       (read-from-minibuffer "select (fields seperate by ,) : " "*"))
                                   "*")
                                 table_name
                                 )
                        (if (string-equal convert-csv-where "")
                            ""
                          (concat "where " convert-csv-where) 
                          )
                        ";'")
                ) nil t)
      (let* ((beg (point-min))
             (end (point-max))
             (txt (buffer-substring-no-properties beg end))
             (paras (nthcdr 0 (org-split-string txt "\n\n")))
             (data_view (mapcar (lambda (para)
                  (let ((record (list))
                        (lines (org-split-string para "\n")))
                    (mapcar (lambda (line)
                              (when (string-match "\\([a-zA-Z0-9-_]+\\)\s=\s\\(.*\\)" line)
                                (push (cons (match-string-no-properties 1 line)
                                            (match-string-no-properties 2 line)) record))          
                              ) lines)
                    (reverse record)))
                paras)
             )
             (table_head (mapcar
                          (lambda (r) (car r))
                          (car data_view))))
             (kill-region (point-min) (point-max))
             (insert "|")
             (mapcar (lambda (column_name)
                       (insert column_name)
                       (insert "|")
                       ) table_head)
             (insert "\n|-\n")
             (mapcar (lambda (record)
                       (insert "|")
                       (mapcar (lambda (value)
                                 (insert value)
                                 (insert "|")
                                 ) (mapcar (lambda (r) (cdr r)) record))
                       (insert "\n")
                       ) data_view)
             (goto-char (point-min))
             (org-table-align)
             (pop-to-buffer (concat filename ".view"))
             (deactivate-mark)
             (org-mode)
             data_view
      ))))

(defun convert-org-table-to-csv (&optional filename)
  (interactive)
  (with-current-buffer (find-file (if filename
                                      filename
                                    (buffer-file-name)))

    (save-excursion
      (let ((content (orgtbl-to-csv
                      (org-table-to-lisp)
                      nil)))
        (kill-region (point-min) (point-max))
        (goto-char (point-min))
        (insert content))))
  )

(defun convert-sqlite3-to-org-lisp (database_name)
  (let* ((table_name (file-name-sans-extension (file-name-nondirectory database_name)))
         (dump_lines (shell-command-to-string
                      (message "%s" (format "sqlite3 -line %s 'select * from %s'" database_name table_name))
                      ))
         (paras (nthcdr 0 (org-split-string dump_lines "\n\n")))
         (table_head ((lambda (para)
                         (let ((record (list))
                               (lines (org-split-string para "\n")))
                           (mapcar (lambda (line)
                                     (when (string-match "\\([a-zA-Z0-9-_]+\\)\s=\s\\(.*\\)" line)
                                       (push (match-string-no-properties 1 line) record))          
                                     ) lines)
                           (reverse record))
                         ) (car paras))))
    (cons table_head (mapcar (lambda (para)
                               (let ((record (list))
                                     (lines (org-split-string para "\n")))
                                 (mapcar (lambda (line)
                                           (when (string-match "\\([a-zA-Z0-9-_]+\\)\s=\s\\(.*\\)" line)
                                             (push (match-string-no-properties 2 line) record))          
                                           ) lines)
                                 (reverse record)))
                             paras))
    )
  )

(defun convert-sqlite3-to-csv (database_name)
  (orgtbl-to-generic (convert-sqlite3-to-org-lisp database_name) '(:sep ","))
  )

(defun convert-org-table-to-record-list (&optional txt)
  (interactive)
  (unless (org-at-table-p)
    (error "No table at point"))
  (let* ((txt (or txt
                  (buffer-substring-no-properties (org-table-begin)
                                                  (org-table-end))))
         (lines (org-split-string txt "[ \t]*\n[ \t]*"))
         (table_head (org-split-string (org-trim (car lines)) "\\s-*|\\s-*"))
         (it (number-sequence 0 (- (safe-length table_head) 1)))
         (data_area (if (not (equal (string-match org-table-hline-regexp (cadr lines)) nil))
                        (cddr lines)
                      (cdr lines))))
    (mapcar
     (lambda (x)
       (unless (string-match org-table-hline-regexp x)
         (let ((values (org-split-string (org-trim x) "\\s-*|\\s-*"))
               (keys table_head)
               )
           (mapcar (lambda (i)
                     (cons
                      (nth i keys)
                      (nth i values))
                     ) it)
           )
         ))
     data_area))
  )


(defvar sqlite3-db-record)
(defvar org-line-record)

(add-text-properties (point) (+ 1 (point)) '(sqlite3-db-record (("id" . 1) ("version" . 0))))
(remove-text-properties (point)  (+ 1 (point)) '(org-line-record))

(defface sqlite-sync-change
  '((((class color)) (:background "magenta"))
    (t (:bold t)))
  "Face used for marking sqlite-sync-change."
  :group 'sqlite-sync)

(defface sqlite-sync-insert
  '((((class color)) (:background "green"))
    (t (:bold t)))
  "Face used for marking sqlite-sync-insert."
  :group 'sqlite-sync)


(defun sqlite-sync-mark-as-change ()
  (interactive)
    (let ((ov (make-overlay (point) (+ (point) 1) nil t t)))
      (overlay-put ov 'face 'sqlite-sync-change)
      (overlay-put ov 'sqlite-sync-overlay t)
      ov)
  )

(defun sqlite-sync-mark-as-insert ()
  (interactive)
    (let ((ov (make-overlay (point) (+ (point) 1) nil t t)))
      (overlay-put ov 'face 'sqlite-sync-insert)
      (overlay-put ov 'sqlite-sync-overlay t)
   ov)
  )

(defun sqlite-sync-mark-as-unchange ()
  (interactive)
  (dolist (ol (overlays-in (point) (+ (point) 1)))
  (delete-overlay ol)))

(defun exe-record-list-as-sql-insert ()
  
  )

