;; helm

(use-package helm-config
  :init
  (helm-mode 1)
  (bind-key "M-q" 'helm-M-x)
  (bind-key "M-x" 'helm-M-x)
  (bind-key "M-y" 'helm-show-kill-ring)
  (bind-key "C-x C-r" 'helm-mini)
  (bind-key "C-," 'helm-recentf)
  (bind-key "C-x C-b" 'helm-buffers-list)
  (bind-key "C-x i" 'helm-imenu))

(use-package helm-occur
  :init
  (bind-key "C-s" 'helm-occur))

(use-package helm-ag
  :init
  (setq helm-ag-base-command "ag --nocolor --nogrou")
  (bind-key "C-c s" 'helm-ag)
  (bind-key "C-c n" 'helm-ag-pop-stack)
  (bind-key "C-c t" 'helm-ag-this-file))
