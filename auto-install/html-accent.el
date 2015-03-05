;;; html-accent.el --- Function that replace accented char by its html representation
;;
;; Filename: html-accent.el
;; Description: Function that replace accented char by its html representation
;; Author: Leonardo de Paula Rosa Piga
;; Copyright (C) 2006, Leonardo de Paula Rosa Piga, all rights reserved.
;; Created: Sex Set  8 16:18:28 BRT 2006
;; Version: 1.0
;; Keywords: i18n, language, accents, html
;; Compatibility: GNU Emacs 21.x
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Installing:
;;    Compile it. (M-x  byte-compile-file)
;;    Copy the html-accent.elc to a folder that is in your load-path library
;;
;;    Add the following line to your .emacs
;;    (autoload 'html-accent "html-accent" "Accent HTML" t)
;;    (autoload 'accent-html "html-accent" "HTML codes to accent" t)
;;    Save it, and enjoy
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; TODO:
;;    Recognize quoted sentences
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Code:
(defun html-accent ()
  (interactive)
  (setq case-fold-search nil)
  (goto-char 1)
  (replace-string (format "%c" 160) "&nbsp;")
  (goto-char 1)
  (replace-string (format "%c" 161) "&iexcl;")
  (goto-char 1)
  (replace-string (format "%c" 162) "&cent;")
  (goto-char 1)
  (replace-string (format "%c" 163) "&pound;")
  (goto-char 1)
  (replace-string (format "%c" 164) "&curren;")
  (goto-char 1)
  (replace-string (format "%c" 165) "&yen;")
  (goto-char 1)
  (replace-string (format "%c" 166) "&brvbar;")
  (goto-char 1)
  (replace-string (format "%c" 167) "&sect;")
  (goto-char 1)
  (replace-string (format "%c" 168) "&uml;")
  (goto-char 1)
  (replace-string (format "%c" 169) "&copy;")
  (goto-char 1)
  (replace-string (format "%c" 170) "&ordf;")
  (goto-char 1)
  (replace-string (format "%c" 171) "&laquo;")
  (goto-char 1)
  (replace-string (format "%c" 172) "&not;")
  (goto-char 1)
  (replace-string (format "%c" 173) "&shy;")
  (goto-char 1)
  (replace-string (format "%c" 174) "&reg;")
  (goto-char 1)
  (replace-string (format "%c" 175) "&macr;")
  (goto-char 1)
  (replace-string (format "%c" 176) "&deg;")
  (goto-char 1)
  (replace-string (format "%c" 177) "&plusmn;")
  (goto-char 1)
  (replace-string (format "%c" 178) "&sup2;")
  (goto-char 1)
  (replace-string (format "%c" 179) "&sup3;")
  (goto-char 1)
  (replace-string (format "%c" 180) "&acute;")
  (goto-char 1)
  (replace-string (format "%c" 181) "&micro;")
  (goto-char 1)
  (replace-string (format "%c" 182) "&para;")
  (goto-char 1)
  (replace-string (format "%c" 183) "&middot;")
  (goto-char 1)
  (replace-string (format "%c" 184) "&cedil;")
  (goto-char 1)
  (replace-string (format "%c" 185) "&sup1;")
  (goto-char 1)
  (replace-string (format "%c" 186) "&ordm;")
  (goto-char 1)
  (replace-string (format "%c" 187) "&raquo;")
  (goto-char 1)
  (replace-string (format "%c" 188) "&frac14;")
  (goto-char 1)
  (replace-string (format "%c" 189) "&frac12;")
  (goto-char 1)
  (replace-string (format "%c" 190) "&frac34;")
  (goto-char 1)
  (replace-string (format "%c" 191) "&iquest;")
  (goto-char 1)
  (replace-string (format "%c" 192) "&Agrave;")
  (goto-char 1)
  (replace-string (format "%c" 193) "&Aacute;")
  (goto-char 1)
  (replace-string (format "%c" 194) "&Acirc;")
  (goto-char 1)
  (replace-string (format "%c" 195) "&Atilde;")
  (goto-char 1)
  (replace-string (format "%c" 196) "&Auml;")
  (goto-char 1)
  (replace-string (format "%c" 197) "&Aring;")
  (goto-char 1)
  (replace-string (format "%c" 198) "&AElig;")
  (goto-char 1)
  (replace-string (format "%c" 199) "&Ccedil;")
  (goto-char 1)
  (replace-string (format "%c" 200) "&Egrave;")
  (goto-char 1)
  (replace-string (format "%c" 201) "&Eacute;")
  (goto-char 1)
  (replace-string (format "%c" 202) "&Ecirc;")
  (goto-char 1)
  (replace-string (format "%c" 203) "&Euml;")
  (goto-char 1)
  (replace-string (format "%c" 204) "&Igrave;")
  (goto-char 1)
  (replace-string (format "%c" 205) "&Iacute;")
  (goto-char 1)
  (replace-string (format "%c" 206) "&Icirc;")
  (goto-char 1)
  (replace-string (format "%c" 207) "&Iuml;")
  (goto-char 1)
  (replace-string (format "%c" 208) "&ETH;")
  (goto-char 1)
  (replace-string (format "%c" 209) "&Ntilde;")
  (goto-char 1)
  (replace-string (format "%c" 210) "&Ograve;")
  (goto-char 1)
  (replace-string (format "%c" 211) "&Oacute;")
  (goto-char 1)
  (replace-string (format "%c" 212) "&Ocirc;")
  (goto-char 1)
  (replace-string (format "%c" 213) "&Otilde;")
  (goto-char 1)
  (replace-string (format "%c" 214) "&Ouml;")
  (goto-char 1)
  (replace-string (format "%c" 215) "&times;")
  (goto-char 1)
  (replace-string (format "%c" 216) "&Oslash;")
  (goto-char 1)
  (replace-string (format "%c" 217) "&Ugrave;")
  (goto-char 1)
  (replace-string (format "%c" 218) "&Uacute;")
  (goto-char 1)
  (replace-string (format "%c" 219) "&Ucirc;")
  (goto-char 1)
  (replace-string (format "%c" 220) "&Uuml;")
  (goto-char 1)
  (replace-string (format "%c" 221) "&Yacute;")
  (goto-char 1)
  (replace-string (format "%c" 222) "&THORN;")
  (goto-char 1)
  (replace-string (format "%c" 223) "&szlig;")
  (goto-char 1)
  (replace-string (format "%c" 224) "&agrave;")
  (goto-char 1)
  (replace-string (format "%c" 225) "&aacute;")
  (goto-char 1)
  (replace-string (format "%c" 226) "&acirc;")
  (goto-char 1)
  (replace-string (format "%c" 227) "&atilde;")
  (goto-char 1)
  (replace-string (format "%c" 228) "&auml;")
  (goto-char 1)
  (replace-string (format "%c" 229) "&aring;")
  (goto-char 1)
  (replace-string (format "%c" 230) "&aelig;")
  (goto-char 1)
  (replace-string (format "%c" 231) "&ccedil;")
  (goto-char 1)
  (replace-string (format "%c" 232) "&egrave;")
  (goto-char 1)
  (replace-string (format "%c" 233) "&eacute;")
  (goto-char 1)
  (replace-string (format "%c" 234) "&ecirc;")
  (goto-char 1)
  (replace-string (format "%c" 235) "&euml;")
  (goto-char 1)
  (replace-string (format "%c" 236) "&igrave;")
  (goto-char 1)
  (replace-string (format "%c" 237) "&iacute;")
  (goto-char 1)
  (replace-string (format "%c" 238) "&icirc;")
  (goto-char 1)
  (replace-string (format "%c" 239) "&iuml;")
  (goto-char 1)
  (replace-string (format "%c" 240) "&eth;")
  (goto-char 1)
  (replace-string (format "%c" 241) "&ntilde;")
  (goto-char 1)
  (replace-string (format "%c" 242) "&ograve;")
  (goto-char 1)
  (replace-string (format "%c" 243) "&oacute;")
  (goto-char 1)
  (replace-string (format "%c" 244) "&ocirc;")
  (goto-char 1)
  (replace-string (format "%c" 245) "&otilde;")
  (goto-char 1)
  (replace-string (format "%c" 246) "&ouml;")
  (goto-char 1)
  (replace-string (format "%c" 247) "&divide;")
  (goto-char 1)
  (replace-string (format "%c" 248) "&oslash;")
  (goto-char 1)
  (replace-string (format "%c" 249) "&ugrave;")
  (goto-char 1)
  (replace-string (format "%c" 250) "&uacute;")
  (goto-char 1)
  (replace-string (format "%c" 251) "&ucirc;")
  (goto-char 1)
  (replace-string (format "%c" 252) "&uuml;")
  (goto-char 1)
  (replace-string (format "%c" 253) "&yacute;")
  (goto-char 1)
  (replace-string (format "%c" 254) "&thorn;")
  (goto-char 1)
  (replace-string (format "%c" 255) "&yuml;")
  (setq case-fold-search t)
)

(defun accent-html ()
  (interactive)
  (setq case-fold-search nil)
  (goto-char 1)
  (replace-string "&nbsp;" (format "%c" 160))
  (goto-char 1)
  (replace-string "&iexcl;" (format "%c" 161))
  (goto-char 1)
  (replace-string "&cent;" (format "%c" 162))
  (goto-char 1)
  (replace-string "&pound;" (format "%c" 163))
  (goto-char 1)
  (replace-string "&curren;" (format "%c" 164))
  (goto-char 1)
  (replace-string "&yen;" (format "%c" 165))
  (goto-char 1)
  (replace-string "&brvbar;" (format "%c" 166))
  (goto-char 1)
  (replace-string "&sect;" (format "%c" 167))
  (goto-char 1)
  (replace-string "&uml;" (format "%c" 168))
  (goto-char 1)
  (replace-string "&copy;" (format "%c" 169))
  (goto-char 1)
  (replace-string "&ordf;" (format "%c" 170))
  (goto-char 1)
  (replace-string "&laquo;" (format "%c" 171))
  (goto-char 1)
  (replace-string "&not;" (format "%c" 172))
  (goto-char 1)
  (replace-string "&shy;" (format "%c" 173))
  (goto-char 1)
  (replace-string "&reg;" (format "%c" 174))
  (goto-char 1)
  (replace-string "&macr;" (format "%c" 175))
  (goto-char 1)
  (replace-string "&deg;" (format "%c" 176))
  (goto-char 1)
  (replace-string "&plusmn;" (format "%c" 177))
  (goto-char 1)
  (replace-string "&sup2;" (format "%c" 178))
  (goto-char 1)
  (replace-string "&sup3;" (format "%c" 179))
  (goto-char 1)
  (replace-string "&acute;" (format "%c" 180))
  (goto-char 1)
  (replace-string "&micro;" (format "%c" 181))
  (goto-char 1)
  (replace-string "&para;" (format "%c" 182))
  (goto-char 1)
  (replace-string "&middot;" (format "%c" 183))
  (goto-char 1)
  (replace-string "&cedil;" (format "%c" 184))
  (goto-char 1)
  (replace-string "&sup1;" (format "%c" 185))
  (goto-char 1)
  (replace-string "&ordm;" (format "%c" 186))
  (goto-char 1)
  (replace-string "&raquo;" (format "%c" 187))
  (goto-char 1)
  (replace-string "&frac14;" (format "%c" 188))
  (goto-char 1)
  (replace-string "&frac12;" (format "%c" 189))
  (goto-char 1)
  (replace-string "&frac34;" (format "%c" 190))
  (goto-char 1)
  (replace-string "&iquest;" (format "%c" 191))
  (goto-char 1)
  (replace-string "&Agrave;" (format "%c" 192))
  (goto-char 1)
  (replace-string "&Aacute;" (format "%c" 193))
  (goto-char 1)
  (replace-string "&Acirc;" (format "%c" 194))
  (goto-char 1)
  (replace-string "&Atilde;" (format "%c" 195))
  (goto-char 1)
  (replace-string "&Auml;" (format "%c" 196))
  (goto-char 1)
  (replace-string "&Aring;" (format "%c" 197))
  (goto-char 1)
  (replace-string "&AElig;" (format "%c" 198))
  (goto-char 1)
  (replace-string "&Ccedil;" (format "%c" 199))
  (goto-char 1)
  (replace-string "&Egrave;" (format "%c" 200))
  (goto-char 1)
  (replace-string "&Eacute;" (format "%c" 201))
  (goto-char 1)
  (replace-string "&Ecirc;" (format "%c" 202))
  (goto-char 1)
  (replace-string "&Euml;" (format "%c" 203))
  (goto-char 1)
  (replace-string "&Igrave;" (format "%c" 204))
  (goto-char 1)
  (replace-string "&Iacute;" (format "%c" 205))
  (goto-char 1)
  (replace-string "&Icirc;" (format "%c" 206))
  (goto-char 1)
  (replace-string "&Iuml;" (format "%c" 207))
  (goto-char 1)
  (replace-string "&ETH;" (format "%c" 208))
  (goto-char 1)
  (replace-string "&Ntilde;" (format "%c" 209))
  (goto-char 1)
  (replace-string "&Ograve;" (format "%c" 210))
  (goto-char 1)
  (replace-string "&Oacute;" (format "%c" 211))
  (goto-char 1)
  (replace-string "&Ocirc;" (format "%c" 212))
  (goto-char 1)
  (replace-string "&Otilde;" (format "%c" 213))
  (goto-char 1)
  (replace-string "&Ouml;" (format "%c" 214))
  (goto-char 1)
  (replace-string "&times;" (format "%c" 215))
  (goto-char 1)
  (replace-string "&Oslash;" (format "%c" 216))
  (goto-char 1)
  (replace-string "&Ugrave;" (format "%c" 217))
  (goto-char 1)
  (replace-string "&Uacute;" (format "%c" 218))
  (goto-char 1)
  (replace-string "&Ucirc;" (format "%c" 219))
  (goto-char 1)
  (replace-string "&Uuml;" (format "%c" 220))
  (goto-char 1)
  (replace-string "&Yacute;" (format "%c" 221))
  (goto-char 1)
  (replace-string "&THORN;" (format "%c" 222))
  (goto-char 1)
  (replace-string "&szlig;" (format "%c" 223))
  (goto-char 1)
  (replace-string "&agrave;" (format "%c" 224))
  (goto-char 1)
  (replace-string "&aacute;" (format "%c" 225))
  (goto-char 1)
  (replace-string "&acirc;" (format "%c" 226))
  (goto-char 1)
  (replace-string "&atilde;" (format "%c" 227))
  (goto-char 1)
  (replace-string "&auml;" (format "%c" 228))
  (goto-char 1)
  (replace-string "&aring;" (format "%c" 229))
  (goto-char 1)
  (replace-string "&aelig;" (format "%c" 230))
  (goto-char 1)
  (replace-string "&ccedil;" (format "%c" 231))
  (goto-char 1)
  (replace-string "&egrave;" (format "%c" 232))
  (goto-char 1)
  (replace-string "&eacute;" (format "%c" 233))
  (goto-char 1)
  (replace-string "&ecirc;" (format "%c" 234))
  (goto-char 1)
  (replace-string "&euml;" (format "%c" 235))
  (goto-char 1)
  (replace-string "&igrave;" (format "%c" 236))
  (goto-char 1)
  (replace-string "&iacute;" (format "%c" 237))
  (goto-char 1)
  (replace-string "&icirc;" (format "%c" 238))
  (goto-char 1)
  (replace-string "&iuml;" (format "%c" 239))
  (goto-char 1)
  (replace-string "&eth;" (format "%c" 240))
  (goto-char 1)
  (replace-string "&ntilde;" (format "%c" 241))
  (goto-char 1)
  (replace-string "&ograve;" (format "%c" 242))
  (goto-char 1)
  (replace-string "&oacute;" (format "%c" 243))
  (goto-char 1)
  (replace-string "&ocirc;" (format "%c" 244))
  (goto-char 1)
  (replace-string "&otilde;" (format "%c" 245))
  (goto-char 1)
  (replace-string "&ouml;" (format "%c" 246))
  (goto-char 1)
  (replace-string "&divide;" (format "%c" 247))
  (goto-char 1)
  (replace-string "&oslash;" (format "%c" 248))
  (goto-char 1)
  (replace-string "&ugrave;" (format "%c" 249))
  (goto-char 1)
  (replace-string "&uacute;" (format "%c" 250))
  (goto-char 1)
  (replace-string "&ucirc;" (format "%c" 251))
  (goto-char 1)
  (replace-string "&uuml;" (format "%c" 252))
  (goto-char 1)
  (replace-string "&yacute;" (format "%c" 253))
  (goto-char 1)
  (replace-string "&thorn;" (format "%c" 254))
  (goto-char 1)
  (replace-string "&yuml;" (format "%c" 255))
  (setq case-fold-search t)
)

(provide 'html-accent)
;;; html-accent.el ends here
