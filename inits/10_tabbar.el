;;;tabber
(require 'tabbar)
(tabbar-mode 1)
(tabbar-mwheel-mode -1)

;(defun my-tabbar-buffer-list ()
;  (delq nil
;        (mapcar #'(lambda (b)
;                    (cond
;                     ;; Always include the current buffer.
;                     ((eq (current-buffer) b) b)
;                     ((buffer-file-name b) b)
;                     ((char-equal ?\  (aref (buffer-name b) 0)) nil)
;		     ; *scratch*バッファは表示する
;		     ((equal "*scratch*" (buffer-name b)) b)
;		     ; それ以外の * で始まるバッファは表示しない
;		     ((char-equal ?* (aref (buffer-name b) 0)) nil)
;                     ((buffer-live-p b) b)))
;                (buffer-list))))
;;(setq tabbar-buffer-list-function 'my-tabbar-buffer-list)



(defvar my-tabbar-displayed-buffers
  '("*scratch*" "*Messages*" "*Backtrace*" "*Colors*" "*Faces*" "*vc-")
  "*Regexps matches buffer names always included tabs.")

(defun my-tabbar-buffer-list ()
  "Return the list of buffers to show in tabs.
Exclude buffers whose name starts with a space or an asterisk.
The current buffer and buffers matches `my-tabbar-displayed-buffers'
are always included."
  (let* ((hides (list ?\  ?\*))
         (re (regexp-opt my-tabbar-displayed-buffers))
         (cur-buf (current-buffer))
         (tabs (delq nil
                     (mapcar (lambda (buf)
                               (let ((name (buffer-name buf)))
                                 (when (or (string-match re name)
                                           (not (memq (aref name 0) hides)))
                                   buf)))
                             (buffer-list)))))
    ;; Always include the current buffer.
    (if (memq cur-buf tabs)
        tabs
      (cons cur-buf tabs))))

(setq tabbar-buffer-list-function 'my-tabbar-buffer-list)

;; 例: 全バッファを一つのグループにしまう
(setq tabbar-buffer-groups-function (lambda () (list "Buffers")))
;; 左に表示されるボタンを無効化
(dolist (btn '(tabbar-buffer-home-button
               tabbar-scroll-left-button
               tabbar-scroll-right-button))
  (set btn (cons (cons "" nil)
                 (cons "" nil))))
;; タブ同士の間隔
(setq tabbar-separator '(0.8))

(global-set-key [(C-S-iso-lefttab)] 'tabbar-backward)
(global-set-key [(control tab)] 'tabbar-forward)

(tabbar-mode)
