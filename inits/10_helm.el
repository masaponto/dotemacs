;;helm
(require 'helm-config)

(setq recentf-max-saved-items 15)

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

;; (require 'helm-ag)
;; (define-key global-map (kbd "C-x a") 'helm-ag)

;; (require 'helm-descbinds)
;; (helm-descbinds-mode)
;; (helm-descbinds-mode 1)
;; (global-set-key (kbd "C-<henkan>") 'helm-descbinds)

;;ac-helm
(require 'ac-helm)
(global-set-key (kbd "<hiragana-katakana>") 'ac-complete-with-helm)
(global-set-key (kbd "C-;") 'ac-complete-with-helm)

;;mimego
;; (require 'helm-migemo)
;; (setq helm-use-migemo t)
