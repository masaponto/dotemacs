;; reduce GC
(setq gc-cons-threshold (* 128 1024 1024))
(setq debug-on-error t)

;; package
(require' package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") )
(package-initialize)


;; init-loader
(require 'init-loader)
(setq init-loader-show-log-after-init 'error-only)
(init-loader-load "~/.emacs.d/config")

; mac
(when (eq system-type 'darwin)
  (setq ns-command-modifier (quote meta)))

; bind-key
(require 'bind-key)

; use-package
(unless (require 'use-package nil t)
  (defmacro use-package (&rest args)))
