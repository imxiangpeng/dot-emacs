(defun bartuer-js-load ()
  "for javascript language
"
  (require 'flyspell nil t)
  (when (fboundp 'flyspell-prog-mode)
    (flyspell-prog-mode))
  (autoload 'connect-jsh "bartuer-js" nil t)
  (autoload 'send-expression-jsh "bartuer-js" nil t)
  (autoload 'send-fuction-jsh "bartuer-js" nil t)
  (autoload 'send-region-jsh "bartuer-js" nil t)
  (autoload 'send-buffer-jsh "bartuer-js" nil t)
  (define-key js2-mode-map "\C-x\C-e" 'send-fuction-jsh)
  (define-key js2-mode-map "\C-\M-x" 'send-buffer-jsh)
  (define-key js2-mode-map "\C-j" 'send-expression-jsh)
  (define-key js2-mode-map "\C-c\C-c" 'send-region-jsh))

(defvar js-process nil)

(defun connect-jsh ()
  "setup the connection to jsh"
  (interactive)
  (setq js-process
        (make-network-process :name "io" :host "192.168.1.2" :service "8889")))
  
(defun send-expression-jsh (expression)
  "prompt for a expression, then send it to remote inner server in jsh
\\[send-expression-jsh]"
  (interactive "sEval in jsh: ")
  (process-send-string js-process (concat expression "\n")))


(defun send-fuction-jsh ()
  "send current function to remote inner server in jsh
\\[send-fuction-jsh]"
  (interactive)
  (let ((parent (js2-node-parent-script-or-fn (js2-node-at-point)))
        pos sib)
    (cond
     ((and (js2-function-node-p parent)
           (not (eq (point) (setq pos_begin_def (js2-node-abs-pos parent)))))
      )    
     (t
      (js2-mode-backward-sibling)))
    (if (not (js2-function-node-p parent))
        (js2-mode-forward-sibling)
      (setq pos_end_def (+ 1 (+ (js2-node-abs-pos parent)
                         (js2-node-len parent)))))
    (process-send-region js-process pos_begin_def pos_end_def)
    (process-send-string js-process "\n")))

(defun send-region-jsh (start end)
  "send the region to remote inner server in jsh
\\[send-region-jsh]"
  (interactive "r")
  (process-send-region js-process start end)
  (process-send-string js-process "\n"))

(defun send-buffer-jsh ()
  "send the current buffer to remote inner server in jsh
\\[send-buffer-jsh]"
  (interactive)
  (process-send-region js-process (point-min) (point-max))
  (process-send-string js-process "\n"))

(defun get-string-of-line (lineno)
  (save-excursion
    (goto-line lineno)
    (beginning-of-line)
    (setq beg (point))
    (end-of-line)
    (setq end (point))
    (buffer-substring-no-properties beg end)
    ))

(defun add-etags-search-head (line)
  (let* ((start (string-match "" line))
         (end (string-match "," line start))
         (lineno (substring line (+ 1 start) end)))
    (concat
     (get-string-of-line (read lineno))
     ""
     line)))

(defun flat-alist (entry)
  (if (listp (cdr entry))
      (mapcan (lambda (sub)
                (if (consp (cdr sub))
                    (mapcar
                     (lambda (subentry)
                       (concat
                        (car entry)
                        "." subentry))
                     (flat-alist sub))
                  (list (concat
                         (car entry) "." (car sub) ""
                         (format "%d,%d\n"
                                 (line-number-at-pos (cdr sub))
                                 (let ((pos (cdr sub)))
                                   (if (markerp pos)
                                       (marker-position pos)
                                     pos)))))))
              (cdr entry))
    (list (format "%s%d,%d\n"
                  (car (car (list entry)))
                  (line-number-at-pos (cdr (car (list entry))))
                  (let ((pos (cdr (car (list entry)))))
                    (if (markerp pos)
                        (marker-position pos)
                      pos))))))

(defun imenu-2-etags ()
  (mapcar 'add-etags-search-head 
          (cdr (mapcan
                'flat-alist
                (imenu--make-index-alist)))))

(defun write-etags (filename)
  "should invoke it in virtual dired mode"
  (interactive)
  (setq etags-string-size 0)
  (setq etags-string "")

  (with-current-buffer (find-file (expand-file-name filename))
    (setq etags-string (imenu-2-etags))
    (setq etags-string-size (apply '+ (mapcar 'length etags-string)))
    )
  
  (with-current-buffer (get-buffer-create "imenu-2-etags")
    (when (buffer-size)
      (erase-buffer))
    (insert "\n")
    (insert (expand-file-name filename))
    (insert (format ",%d\n" etags-string-size))
    (mapcar 'insert etags-string)
    (write-region (point-min) (point-max) "/tmp/TAGS" t)
    )
  )


(defun generate-etags (dir pattern)
  (interactive
   "Ddirectory: \nsfile-name : ")
  (let ((files (butlast (split-string (shell-command-to-string
                              (concat
                               "find "
                               dir
                               " -name "
                               (shell-quote-argument pattern)))
                               "\n"))))
    (mapcar 'write-etags files)))
