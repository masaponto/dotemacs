(require 'bind-key)

;; C-h をバックスペースに
(keyboard-translate ?\C-h ?\C-?)

(bind-key "C-x ?" 'help-command)
(bind-key "C-u" 'forward-char)

;; 行移動をM-j割り当て
(bind-key "\M-j" 'goto-line)
(bind-key "C-x C-v" 'view-mode)

(defun other-window-or-split ()
  (interactive)
  (when (one-window-p)
    (split-window-horizontally))
  (other-window 1))

(bind-key "C-t" 'other-window-or-split)

(defun revert-buffer-no-confirm (&optional force-reverting)
  "Interactive call to revert-buffer. Ignoring the auto-save
 file and not requesting for confirmation. When the current buffer
 is modified, the command refuses to revert it, unless you specify
 the optional argument: force-reverting to true."
  (interactive "P")
  ;;(message "force-reverting value is %s" force-reverting)
  (if (or force-reverting (not (buffer-modified-p)))
      (revert-buffer :ignore-auto :noconfirm)
    (error "The buffer has been modified")))
(bind-key "\C-r" 'revert-buffer-no-confirm)

(setq comment-style 'multi-line)
(bind-key "\C-c\C-c" 'comment-or-uncomment-region)

(bind-key "M-SPC" 'cycle-spacing)

;;(bind-key "M-s" (lambda () (interactive) (align-regexp)))
(global-set-key (kbd "C-c M-a") 'align-regexp)

;; disable mouse
(global-unset-key [mouse-1])
(global-unset-key [down-mouse-1])
(global-unset-key [drag-mouse-1])
(global-unset-key [double-mouse-1])
(global-unset-key [double-drag-Mouse-1])
(global-unset-key [triple-mouse-1])
(global-unset-key [triple-drag-mouse-1])
(global-unset-key [\S-down-mouse-1])
(global-unset-key [\C-down-mouse-1])
(global-unset-key [\M-mouse-1])
(global-unset-key [\M-down-mouse-1])
(global-unset-key [\M-drag-mouse-1])
(global-unset-key [mouse-2])
(global-unset-key [mouse-3])
(global-unset-key [\S-mouse-3])
(global-unset-key [\S-down-mouse-3])
(global-unset-key [\C-down-mouse-3])
(global-unset-key [\M-mouse-3])

(global-unset-key (kbd "S-SPC"))
