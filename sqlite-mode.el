(defun sqlite-mode ()
  "Major mode for sqlite"
  (interactive)
  (kill-all-local-variables)
  (setq mode-name "sqlite")
  (run-hooks 'sqlite-mode-hook))

(defun bartuer-sqlite-load ()
  (interactive)
  (toggle-read-only t)
  (let ((db-buffer (current-buffer))
        (db-name (buffer-file-name)))
    (convert-sqlite3-to-org-table-annoted-by-record-list (buffer-file-name))
    (pop-to-buffer (concat
                    sqlite-mode-database-name
                    "."
                    sqlite-mode-table-name
                    ".view"))
    (kill-buffer db-buffer)
    )
  (dbview-mode t)
  )

(provide 'sqlite-mode)