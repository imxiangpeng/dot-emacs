
(fset '2-floor
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("afloor

(fset 'mark-hide
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("	" 11 " [%d]")) arg)))

(fset 'first-child
   "\C-n\C-j\C-[\C-[OC")