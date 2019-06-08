(autoload 'python-mode "python-mode" "Python Mode." t)
;;(autoload 'jedi-core "jedi-core" nil t)

(setq-default py-split-windows-on-execute-function 'split-window-horizontally)

(add-hook 'python-mode-hook 'py-autopep8-enable-on-save)

(add-hook 'python-mode-hook 'indent-guide-mode)

(add-hook 'python-mode-hook
          '(lambda ()
             (define-key python-mode-map(kbd "\C-m") 'newline-and-indent)
             (define-key python-mode-map(kbd "RET") 'newline-and-indent)
             (define-key python-mode-map(kbd "\C-c p") 'py-autopep8)
             (setq indent-guide-recursive t)
             (setq indent-tabs-mode nil)
             (setq indent-level 4)
             (setq python-indent 4)
             (setq tab-width 4)
             ))
