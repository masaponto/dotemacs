(use-package anzu
  :init
  (global-anzu-mode 1)
  (set-face-attribute 'anzu-mode-line nil :foreground "yellow" :weight 'bold)
  (bind-key "M-%" 'anzu-query-replace)
  (bind-key "M-#" 'anzu-query-replace-at-cursor-thing)
  :config
  (setq anzu-mode-lighter "")
  (setq anzu-deactivate-region t)
  (setq anzu-search-threshold 1000)
  (setq anzu-replace-threshold 50)
  (setq anzu-replace-to-string-separator " => ")
  (setq anzu-use-migemo t))
