;;; ess-comp.el --- setting for compiling, only.

;; Copyright (C) 1997--2006 A. J. Rossini
;; Copyright (C) 1997--2006 A.J. Rossini, Rich M. Heiberger, Martin
;;	Maechler, Kurt Hornik, Rodney Sparapani, and Stephen Eglen.

;; Original Author: A.J. Rossini <blindglobe@gmail.com>
;; Created: 25 July 1997
;; Maintainers: ESS-core <ESS-core@stat.math.ethz.ch>

;; Keywords: start up, configuration.

;; This file is part of ESS

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to
;; the Free Software Foundation, 675 Mass Ave, Cambridge, MA 02139, USA.

;;; Commentary:

;;; This file sets up all compilation needs.

(provide 'ess-comp)

;;; Code:

;; Emacs doesn't include '.' in the emacs lisp load path.
(add-to-list 'load-path nil)

;; defvar'ed to nil in ./ess-site.el
(setq ess-show-load-messages t)

(defun ess-message (msg)
  "Shortcut for \\[message] only if `ess-show-load-messages' is non-nil."
  (if ess-show-load-messages (message msg)))

;; These are required by every other file.
(ess-message "loading 'ess-emcs ..")  (require 'ess-emcs) ;set Emacsen diffs
(ess-message "loading 'ess-cust ..")  (require 'ess-cust) ;set variables
(ess-message "loading 'ess ..")	      (require 'ess)      ;configure
(ess-message "loading 'ess-site ..")  (require 'ess-site) ;overload defaults

 ; Local variables section

;;; This file is automatically placed in Outline minor mode.
;;; The file is structured as follows:
;;; Chapters:     ^L ;
;;; Sections:    ;;*;;
;;; Subsections: ;;;*;;;
;;; Components:  defuns, defvars, defconsts
;;;              Random code beginning with a ;;;;* comment
;;; Local variables:
;;; mode: emacs-lisp
;;; mode: outline-minor
;;; outline-regexp: "\^L\\|\\`;\\|;;\\*\\|;;;\\*\\|(def[cvu]\\|(setq\\|;;;;\\*"
;;; End:

;;; ess-comp.el ends here
