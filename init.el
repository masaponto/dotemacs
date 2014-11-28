;; package
(require' package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") )
(package-initialize)

;; init-loader
(require 'init-loader)
(init-loader-load "~/.emacs.d/inits")

;; ログファイル
(setq init-loader-show-log-after-init 'nil)

