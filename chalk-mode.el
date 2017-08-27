;;; chalk-mode.el --- Language mode for Chalk
;;
;; Author: Sergey Avseyev <sergey.avseyev@gmail.com>
;; Version: 1
;; URL: https://github.com/avsej/chalk-mode.el
;; Keywords: programming
;; Package-Requires: ()
;;
;; This file is not part of GNU Emacs.
;;
;; Copyright (c) 2017 Sergey Avseyev
;;
;;; Commentary:
;;
;; Description:
;;
;; This is a language mode for the Chalk scripting language
;;
;; Installation:
;;
;; The simple way is to use package.el:
;;
;;   M-x package-install chalk-mode
;;
;; Or, copy chalk-mode.el to some location in your emacs load
;; path. Then add "(require 'chalk-mode)" to your emacs initialization
;; (.emacs, init.el, or something).
;;
;; Example config:
;;
;;   (require 'chalk-mode)
;;
;;; License:
;;
;; Permission is hereby granted, free of charge, to any person
;; obtaining a copy of this software and associated documentation
;; files (the "Software"), to deal in the Software without
;; restriction, including without limitation the rights to use, copy,
;; modify, merge, publish, distribute, sublicense, and/or sell copies
;; of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:
;;
;; The above copyright notice and this permission notice shall be
;; included in all copies or substantial portions of the Software.
;;
;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
;; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
;; MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
;; NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
;; BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
;; ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
;; CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
;; SOFTWARE.

;;; Code:

(defvar chalk-mode-hook nil)

(define-generic-mode
    'chalk-mode     ;; name of mode
  '("//"            ;; single-line comments
    ("/*" . "*/"))  ;; multi-line comments
  '("break"
    "continue"
    "do"
    "else"
    "for"
    "if"
    "return"
    "while"
    "function"
    "in"
    "null"
    "true"
    "false"
    "var"
    "class"
    "is"
    "static"
    "super"
    "this"
    "import"
    "from"
    "try"
    "except"
    "as"
    "finally")                                           ;; keywords
  '(
    )
  '("\\.ck$")                                            ;; files for which to activate this mode
  nil                                                    ;; other functions to call
  "A mode for Chalk files"
  )
(provide 'chalk-mode)

;;; chalk-mode.el ends here
