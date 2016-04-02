;; 画面いっぱい
(set-frame-parameter nil 'fullscreen 'maximized)

;; font
(set-frame-font "ricty-11")
(add-to-list 'default-frame-alist '(font . "ricty-11"))

;; theme
(load-theme 'dracula t)

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
