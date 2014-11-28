;; C-h をバックスペースに
(keyboard-translate ?\C-h ?\C-?)
(define-key global-map (kbd "C-x ?") 'help-command)

;;C-x,C-i indent region
(global-set-key "\C-x\C-i" 'indent-region)

;; 行移動をM-j割り当て
(global-set-key "\M-j" 'goto-line)

(global-set-key "\C-c\C-c" 'comment-region)

(global-set-key (kbd "M-SPC") 'cycle-spacing)

(add-hook 'eval-expression-minibuffer-setup-hook 'eldoc-mode)

;; disable mouse
;; (global-unset-key [mouse-1])
;; (global-unset-key [down-mouse-1])
;; (global-unset-key [drag-mouse-1])
;; (global-unset-key [double-mouse-1])
;; (global-unset-key [double-drag-Mouse-1])
;; (global-unset-key [triple-mouse-1])
;; (global-unset-key [triple-drag-mouse-1])
;; (global-unset-key [\S-down-mouse-1])
;; (global-unset-key [\C-down-mouse-1])
;; (global-unset-key [\M-mouse-1])
;; (global-unset-key [\M-down-mouse-1])
;; (global-unset-key [\M-drag-mouse-1])
;; (global-unset-key [mouse-2])
;; (global-unset-key [mouse-3])
;; (global-unset-key [\S-mouse-3])
;; (global-unset-key [\S-down-mouse-3])
;; (global-unset-key [\C-down-mouse-3])
;; (global-unset-key [\M-mouse-3])

;; マウスで選択するとコピーする Emacs 24 ではデフォルトが nil
(setq mouse-drag-copy-region t)
