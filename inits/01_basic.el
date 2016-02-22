;; (setq default-directory "~/") (setq command-line-default-directory
;; "~/")

(prefer-coding-system 'utf-8-unix)

(setq split-width-threshold nil)

;; バックアップを残さない
(setq make-backup-files nil)

;; no start up screen
(setq inhibit-startup-screen t)

(setq ring-bell-function 'ignore)
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
;(setq delete-auto-save-files t)

;;; *.~ とかのバックアップファイルを作らない
(setq make-backup-files nil)
;;; .#* とかのバックアップファイルを作らない
(setq auto-save-default nil)

;; file名の補完で大文字小文字を区別しない
(setq completion-ignore-case t)

;; 保存時に行末の空白を削除
;;(add-hook 'before-save-hook 'delete-trailing-whitespace)
; 行末のwhitespaceを削除
(setq delete-trailing-whitespace-exclude-patterns (list "\\.md$" "\\.markdown$"))

(require 'cl)
(defun delete-trailing-whitespace-with-exclude-pattern ()
  (interactive)
  (cond ((equal nil (loop for pattern in delete-trailing-whitespace-exclude-patterns
                          thereis (string-match pattern buffer-file-name)))
         (delete-trailing-whitespace))))

(add-hook 'before-save-hook 'delete-trailing-whitespace-with-exclude-pattern)


;; ファイル末尾の改行を削除
;; http://www.emacswiki.org/emacs/DeletingWhitespace
(defun my-delete-trailing-blank-lines ()
  "Deletes all blank lines at the end of the file."
  (interactive)
  (save-excursion
    (save-restriction
      (widen)
      (goto-char (point-max))
      (delete-blank-lines))))

(add-hook 'before-save-hook 'my-delete-trailing-blank-lines)

;; 対応するカッコをハイライト
(show-paren-mode t)

;; 終了時にオートセーブファイルを消す
(setq delete-auto-save-files t)

(setq load-prefer-newer t)

(font-lock-add-keywords nil '(("\\<\\(FIXME:\\|TODO:\\)" 1 font-lock-warning-face t)))

(setq split-height-threshold nil)

(global-set-key (kbd "C-x C-v") 'view-mode)

;; spell
(setq-default ispell-program-name "aspell")
(eval-after-load "ispell"
 '(add-to-list 'ispell-skip-region-alist '("[^\000-\377]+")))


(setq abbrev-file-name "~/.abbrev_defs")
(setq save-abbrevs t)
(quietly-read-abbrev-file)
;; 以下は単なる好み。
;;(global-set-key "\C-x'" 'just-one-space)
;;(global-set-key "\M- " 'dabbrev-expand)
;;(global-set-key "\M-/" 'expand-abbrev)
;;(eval-after-load "abbrev" '(global-set-key "\M-/" 'expand-abbrev))
