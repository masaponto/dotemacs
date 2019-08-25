;; reduce GC
(setq gc-cons-threshold (* 128 1024 1024))
(setq debug-on-error t)

;; package
(require' package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

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


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(doom-themes-enable-bold t)
 '(doom-themes-enable-italic t)
 '(package-selected-packages
   (quote
    (git-gutter company-quickhelp dumb-jump doom-themes company-jedi company auto-virtualenvwrapper web-mode quelpa-use-package markdown-mode init-loader indent-guide helm-ag haskell-mode elscreen anzu))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(doom-modeline-bar ((t (:background "#6272a4")))))
