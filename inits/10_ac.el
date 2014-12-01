;; auto-complete
(require 'auto-complete)
(global-auto-complete-mode t)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-20140414.2324/dict")
(require 'auto-complete-config)

(ac-config-default)
(setq ac-auto-start nil)

;; no menu
(setq ac-auto-show-menu nil)

;; 補完候補をソート
(setq ac-use-comphist t)
