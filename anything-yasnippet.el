(require 'anything)

(defun yasnippet-complete-obj-message (signature)
  "constructure an snippet according to the objc signature string"
  (message signature))

(defvar anything-objc-message-re "\\(\\(^[-+]?\\ *([a-zA-Z_0-9<>\\ \\*]*)\\)\\([a-zA-Z0-9_+:()<>,\\ \\.\\*]*\\).*\177\\(.*\\)\001.*$\\)"
  "1:return type 2:signature\177 3:message name\001")

(defun anything-objc-etags-parser (candidate)
  "parse the etags candidate, return (label . signature)"
  (when (string-match anything-objc-message-re candidate)
    (let* ((lable
            (concat
             (match-string 2 candidate) "\t"
             (match-string 4 candidate)))
           (signature
            (match-string 3 candidate)))
      (cons lable signature)))
  )

(setq anything-c-source-complete-etags-objc
  '((name . "Etags Method Completion")
    (candidates
     . (lambda ()
         (mapcar 'anything-objc-etags-parser
               (split-string
                (shell-command-to-string "cat ~/Documents/TAGS|grep ^[+-].*") "\n")))
     )
    (action
     ("Completion" . yasnippet-complete))
    (persistent-action . yasnippet-complete)))

(defun anything-etags-complete-objc-message ()
  (interactive)
  (let ((anything-sources (list anything-c-source-complete-etags-objc)))
    (anything)))

(anything-etags-complete-objc-message)