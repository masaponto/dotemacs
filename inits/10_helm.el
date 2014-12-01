;;helm
(require 'helm-config)

(setq recentf-max-saved-items 30)

(global-set-key (kbd "C-s") 'helm-occur)
(define-key global-map (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(define-key global-map (kbd "C-x C-r") 'helm-recentf)
(global-set-key (kbd "C-q") 'helm-mini)
(define-key global-map (kbd "C-x b") 'helm-buffers-list)
(define-key global-map (kbd "C-x i") 'helm-imenu)


;; Emulate `kill-line' in helm minibuffer
(setq helm-delete-minibuffer-contents-from-point t)
(defadvice helm-delete-minibuffer-contents (before helm-emulate-kill-line activate)
  "Emulate `kill-line' in helm minibuffer"
  (kill-new (buffer-substring (point) (field-end))))


;;ac-helm
(require 'ac-helm)
(global-set-key (kbd "<hiragana-katakana>") 'ac-complete-with-helm)
(global-set-key (kbd "C-;") 'ac-complete-with-helm)


;;helm-ag
;; require to install the silver searcher to OS
(require 'helm-files)
(require 'helm-ag)
(global-set-key (kbd "M-g .") 'helm-ag)
(global-set-key (kbd "M-g ,") 'helm-ag-pop-stack)
(global-set-key (kbd "C-M-s") 'helm-ag-this-file)


;; helm descbinds
(require 'helm-descbinds)
(helm-descbinds-mode)
;; デフォルトでC-x TABに割り当てられるので競合回避
(global-set-key (kbd "C-u") 'helm-descbinds)
(global-set-key (kbd "C-x TAB") 'indent-region)
