;; バックアップを残さない
(setq make-backup-files nil)

;; no start up screen
(setq inhibit-startup-screen t)

;;hilight
(global-hl-line-mode t)
(custom-set-faces
 '(hl-line ((t (:background "#424242"))))
)

;; yes -no to y - n
(defalias 'yes-or-no-p 'y-or-n-p)

;;大文字・小文字を区別しない
(setq ac-ignore-case t)
(setq read-buffer-completion-ignore-case t)
(setq read-file-name-completion-ignore-case t)

;; バックアップファイルを作らない
(setq backup-inhibited t)

;;; 終了時にオートセーブファイルを消す
(setq delete-auto-save-files t)

;; file名の補完で大文字小文字を区別しない
(setq completion-ignore-case t)

;; 保存時に行末の空白を削除
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; 対応するカッコをハイライト
(show-paren-mode t)

;; 終了時にオートセーブファイルを消す
(setq delete-auto-save-files t)

(setq load-prefer-newer t)

(font-lock-add-keywords nil '(("\\<\\(FIXME:\\|TODO:\\)" 1 font-lock-warning-face t)))

;;自動カッコ閉じ
;;(electric-pair-mode 1)

;;(electric-indent-mode 1)
