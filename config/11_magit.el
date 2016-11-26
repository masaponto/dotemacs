(require 'magit)
(global-set-key "\M-m" 'magit-status)

(defun elscreen-kill-all-scratch-screen ()
  "Delete all scratch screen"
  (interactive)
  (dolist (screen-and-buffer (elscreen-get-screen-to-name-alist))
    (when (and (string-match "*scratch*" (cdr screen-and-buffer))
               (> (length (elscreen-get-screen-list)) 1))
      (elscreen-kill (car screen-and-buffer)))))

(defun delete-all-magit-buffers ()
  "Delete all *magit-xxx* buffer"
  (interactive)
  (dolist (buffer (buffer-list))
    (when (string-match "*magit" (buffer-name buffer))
      (kill-buffer buffer))))

(defun magit-mode-quit-window ()
  "Restores the previous window configuration and kills the magit buffer"
  (interactive)
  (delete-all-magit-buffers)
  (elscreen-kill-all-scratch-screen)
  (jump-to-register :magit-fullscreen))

(define-key magit-status-mode-map (kbd "q") 'magit-mode-quit-window)

(defun with-editor-post-finish-hook-1 ()
  (delete-all-magit-buffers)
  (elscreen-kill-all-scratch-screen))

(defun with-editor-post-cancel-hook-1 ()
  (delete-all-magit-buffers)
  (elscreen-kill-all-scratch-screen))
