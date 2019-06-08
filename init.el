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
;;(package-install 'helm)

;;(defvar installing-package-list
;;  '(
;;    ;; ここに使っているパッケージを書く。
;;    init-loader
;;    dakrone-theme
;;    bind-key
;;    migemo
;;    elscreen
;;    anzu
;;    indent-guide
;;    anzu
;;    magit
;;    company
;;    minimap
;;    telephone-line
;;    company
;;    helm-swoop
;;    company-statistics
;;    helm
;;    ))
;;
;;(let ((not-installed (loop for x in installing-package-list
;;                            when (not (package-installed-p x))
;;                            collect x)))
;;  (when not-installed
;;    (package-refresh-contents)
;;    (dolist (pkg not-installed)
;;        (package-install pkg))))
;;
;;
;;
;;(custom-set-variables
;; ;; custom-set-variables was added by Custom.
;; ;; If you edit it by hand, you could mess it up, so be careful.
;; ;; Your init file should contain only one such instance.
;; ;; If there is more than one, they won't work right.
;; '(anzu-deactivate-region t)
;; '(anzu-mode-lighter "")
;; '(anzu-replace-threshold 50)
;; '(anzu-replace-to-string-separator " => ")
;; '(anzu-search-threshold 1000)
;; '(package-selected-packages
;;   (quote
;;    (toml-mode racket-mode tide typescript-mode rainbow-delimiters company-go go-mode kotlin-mode swift-mode company-jedi python-mode markdown-mode minimap helm-descbinds helm-describe-modes anzu indent-guide helm-ag company-statistics migemo helm-swoop telephone-line elscreen dakrone-theme helm yatex yaml-mode web-mode redo+ pythonic py-autopep8 pkg-info pep8 mozc-popup mozc-im matlab-mode jedi-core init-loader company-math bind-key))))
;;
;;
;;(custom-set-faces
;; ;; custom-set-faces was added by Custom.
;; ;; If you edit it by hand, you could mess it up, so be careful.
;; ;; Your init file should contain only one such instance.
;; ;; If there is more than one, they won't work right.
;; '(company-preview ((t (:foreground "darkgray" :underline t))))
;; '(company-preview-common ((t (:inherit company-preview))))
;; '(company-tooltip ((t (:background "lightgray" :foreground "black"))))
;; '(company-tooltip-common ((((type x)) (:inherit company-tooltip :weight bold)) (t (:inherit company-tooltip))))
;; '(company-tooltip-common-selection ((((type x)) (:inherit company-tooltip-selection :weight bold)) (t (:inherit company-tooltip-selection))))
;; '(company-tooltip-selection ((t (:background "steelblue" :foreground "white"))))
;; '(hl-line ((t (:background "#424242")))))
;;
