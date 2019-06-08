;;helm
(setq package-enable-at-startup nil)
(package-initialize)
(setq tramp-verbose 6)
(require 'helm)
(require 'helm-config)
(require 'helm-occur)
(helm-mode 1)

(require 'migemo)
(setq migemo-command "cmigemo")
(setq migemo-options '("-q" "--emacs"))

(setq migemo-user-dictionary nil)
(setq migemo-regex-dictionary nil)
(setq migemo-coding-system 'utf-8-unix)
(load-library "migemo")
(migemo-init)
(setq migemo-dictionary "/usr/share/migemo/utf-8/migemo-dict")

(helm-migemo-mode 1)

(bind-key "C-s" 'helm-occur)
(bind-key "M-q" 'helm-M-x)
(bind-key "M-x" 'helm-M-x)
(bind-key "M-y" 'helm-show-kill-ring)
(bind-key "C-x C-r" 'helm-mini)
(bind-key "C-," 'helm-recentf)
(bind-key "C-x C-b" 'helm-buffers-list)
(bind-key "C-x i" 'helm-imenu)

;; Emulate `kill-line' in helm minibuffer
(setq helm-delete-minibuffer-contents-from-point t)
(defadvice helm-delete-minibuffer-contents (before helm-emulate-kill-line activate)
  "Emulate `kill-line' in helm minibuffer"
  (kill-new (buffer-substring (point) (field-end))))

;;helm-swoop
(require 'helm-swoop)
(bind-key "M-s" 'helm-swoop)

;;helm-ag
(require 'helm-ag)
(setq helm-ag-base-command "ag --nocolor --nogrou")
(bind-key "C-c s" 'helm-ag)
(bind-key "C-c n" 'helm-ag-pop-stack)
(bind-key "C-c t" 'helm-ag-this-file)

;; helm descbinds
(autoload 'helm-descbinds "" nil t)
(helm-descbinds-mode)
;; デフォルトでC-x TABに割り当てられるので競合回避
(bind-key "C-f" 'helm-descbinds)
(bind-key "C-x TAB" 'indent-region)

(setq helm-split-window-default-side 'below)
