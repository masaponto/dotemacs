
(autoload 'python-mode "python-mode" "Python Mode." t)
(add-to-list 'interpreter-mode-alist '("python" . python-mode))

(setq-default py-split-windows-on-execute-function 'split-window-horizonaly)

(add-hook 'python-mode-hook 'company-mode)

(add-hook 'python-mode-hook
          '(lambda ()
             (define-key python-mode-map(kbd "\C-m") 'newline-and-indent)
             (define-key python-mode-map(kbd "\C-c p") 'py-autopep8)
             (define-key python-mode-map(kbd "RET") 'newline-and-indent)))


(require 'jedi-core)
(setq jedi:complete-on-dot t)
(setq jedi:use-shortcuts t)
(add-hook 'python-mode-hook 'jedi:setup)
(add-to-list 'company-backends 'company-jedi) ; backendに追加


;;PYTHONPATH上のソースコードがauto-completeの補完対象になる
(setenv "PYTHONPATH" "/usr/lib/python3.5/site-packages")

(add-hook 'python-mode-hook 'highlight-indentation-mode)
