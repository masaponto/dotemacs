;;helm
(require 'helm-config)
(require 'helm-files)

(setq recentf-max-saved-items 1000)

(global-set-key (kbd "M-s") 'helm-occur)
(global-set-key (kbd "M-q") 'helm-M-x)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x C-r") 'helm-mini)
(global-set-key (kbd "C-,") 'helm-recentf)
(global-set-key (kbd "C-x C-b") 'helm-buffers-list)
(global-set-key (kbd "C-x i") 'helm-imenu)


;; Emulate `kill-line' in helm minibuffer
(setq helm-delete-minibuffer-contents-from-point t)
(defadvice helm-delete-minibuffer-contents (before helm-emulate-kill-line activate)
  "Emulate `kill-line' in helm minibuffer"
  (kill-new (buffer-substring (point) (field-end))))

;;ac-helm
;;(autoload 'ac-helm "" nil t)
;;(require 'ac-helm)
;;(global-set-key (kbd "C-r") 'ac-complete-with-helm)

;;helm-swoop
(require 'helm-swoop)
(global-set-key (kbd "C-s") 'helm-swoop)


;;helm-ag
;; require to install the silver searcher to OS
(require 'helm-ag)
;;(autoload 'helm-files "" nil t)
;;(autoload 'helm-ag "" nil t)

(setq helm-ag-base-command "ag --nocolor --nogrou")
(global-set-key (kbd "C-c s") 'helm-ag)
(global-set-key (kbd "C-c n") 'helm-ag-pop-stack)
(global-set-key (kbd "C-c t") 'helm-ag-this-file)

;; helm descbinds
;;(require 'helm-descbinds)
(autoload 'helm-descbinds "" nil t)
(helm-descbinds-mode)
;; デフォルトでC-x TABに割り当てられるので競合回避
(global-set-key (kbd "C-f") 'helm-descbinds)
(global-set-key (kbd "C-x TAB") 'indent-region)

;; helm migemo
;; (require 'helm-migemo)
;; ;; この修正が必要
;; (eval-after-load "helm-migemo"
;;   '(defun helm-compile-source--candidates-in-buffer (source)
;;      (helm-aif (assoc 'candidates-in-buffer source)
;;          (append source
;;                  `((candidates
;;                     . ,(or (cdr it)
;;                            (lambda ()
;;                              ;; Do not use `source' because other plugins
;;                              ;; (such as helm-migemo) may change it
;;                              (helm-candidates-in-buffer (helm-get-current-source)))))
;;                    (volatile) (match identity)))
;;        source)))
