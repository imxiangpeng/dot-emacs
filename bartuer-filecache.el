;; maybe [[http://bc.tech.coop/blog/070225.html][link spotlight and emacsclient]] is a good idea
;; add below file cache content to bartuer-filecache.el
(defun file-cache-ido-find-file (file)
  "Using ido, interactively open file from file cache'.
First select a file, matched using ido-switch-buffer against the contents
in ile-cache-alist'. If the file exist in more than one
directory, select directory. Lastly the file is opened."
  (interactive (list (file-cache-ido-read "File: "
                                          (mapcar
                                           (lambda (x)
                                             (car x))
                                           file-cache-alist))))
  (let* ((record (assoc file file-cache-alist)))
    (find-file
     (expand-file-name
      file
      (if (= (length record) 2)
          (car (cdr record))
        (file-cache-ido-read
         (format "Find %s in dir: " file) (cdr record)))))))

(defun file-cache-ido-read (prompt choices)
  (let ((ido-make-buffer-list-hook
         (lambda ()
           (setq ido-temp-list choices))))
    (ido-read-buffer prompt)))

(defun file-cache-add-this-file ()
  "when kill buffer,add the file to cache"
    (and buffer-file-name
                (file-exists-p buffer-file-name)
                       (file-cache-add-file buffer-file-name)))

(defun bartuer-filecache-load ()
  "for access file cache"
  (require 'filecache)
  (if (fboundp 'file-cache-add-directory)
      (progn
         (file-cache-add-directory "~/etc/el")
         (file-cache-add-directory "~/org")
         (file-cache-add-directory "~/local/share/doc/")
         (file-cache-add-directory "~/local/share/")
         (file-cache-add-directory "~/local/share/info")
         (add-hook 'kill-buffer-hook 'file-cache-add-this-file)
         (global-set-key "\M-2" 'file-cache-ido-find-file))))




