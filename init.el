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

(package-install 'helm)




(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(anzu-deactivate-region t)
 '(anzu-mode-lighter "")
 '(anzu-replace-threshold 50)
 '(anzu-replace-to-string-separator " => ")
 '(anzu-search-threshold 1000)
 '(package-selected-packages
   (quote
    (bind-key gnuplot-mode php-mode yatex yaml-mode web-mode telephone-line swift-mode redo+ pythonic python-mode py-autopep8 pep8 org mozc-popup mozc-im minimap migemo matlab-mode markdown-mode magit julia-mode init-loader indent-guide helm-descbinds helm-ag haskell-mode haml-mode geiser fringe-helper free-keys flycheck-dmd-dub faceup exec-path-from-shell elscreen dracula-theme direx dakrone-theme d-mode company-statistics company-math company-jedi clang-format anzu ace-isearch))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(hl-line ((t (:background "#424242")))))
