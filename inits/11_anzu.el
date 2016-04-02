(require 'anzu)
(global-anzu-mode 1)

(set-face-attribute 'anzu-mode-line nil
                    :foreground "yellow" :weight 'bold)

(custom-set-variables
 '(anzu-mode-lighter "")
 '(anzu-deactivate-region t)
 '(anzu-search-threshold 1000)
 '(anzu-replace-threshold 50)
 '(anzu-replace-to-string-separator " => "))


(global-set-key (kbd "M-%") 'anzu-query-replace)
(global-set-key (kbd "M-#") 'anzu-query-replace-at-cursor-thing)
