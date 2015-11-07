
(require 'highlight-indentation)
;;(autoload 'python-mode "python-mode" nil t)
;;(add-to-list 'auto-mode-alist '("\\.py$" . python-mode))

(set-face-background 'highlight-indentation-face "#42426F")
(set-face-background 'highlight-indentation-current-column-face "#708090")
(define-key global-map (kbd "C-;") highlight-indentation-mode)
