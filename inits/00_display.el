;; 画面いっぱい
;; (custom-set-variables
;;  '(initial-frame-alist (quote ((fullscreen . maximized)))))
;; (setq default-frame-alist initial-frame-alist)

;; font
(set-frame-font "ricty-13")
(add-to-list 'default-frame-alist '(font . "ricty-13"))

;; theme
(load-theme 'deeper-blue t)

;; setting of back ground
;;(if window-system (progn (set-frame-parameter nil 'alpha 93)))

;; display clock
(setq display-time-day-and-date t)
(setq display-time-24hr-format t)
(display-time-mode t)

;; display size of file
(size-indication-mode t)

;; タイトルバーにファイル名を表示する
(setq frame-title-format (format "emacs@%s : %%f" (system-name)))

;; ツールバーを非表示
(tool-bar-mode -1)

;; メニューバーを非表示
(menu-bar-mode -1)

;; delete scroll-bar
(toggle-scroll-bar nil)

;; カーソルの位置が何文字目かを表示する
(column-number-mode t)

;; カーソルの位置が何行目かを表示する
(line-number-mode t)