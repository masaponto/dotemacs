(autoload 'python-mode "python-mode" "Python Mode." t)

(autoload 'jedi-core "jedi-core" nil t)

;;(add-to-list 'interpreter-mode-alist '("python" . python-mode))
;;(add-to-list 'interpreter-mode-alist '("jedi-core" . jedi-core))

(eval-after-load 'jedi-core
  '(progn
     (setq jedi:complete-on-dot t)
     (setq jedi:use-shortcuts t)
     (setq jedi:environment-root "~/.jedienv")
     ;; (setq jedi:environment-virtualenv
     ;;       (append python-environment-virtualenv
     ;;               '("--virtual-env" "~/.pyenv/versions/anaconda3-2.3.0"
     ;;                 "--virtual-env" "~/.jedienv")))
     (setq jedi:server-args
           '("--virtual-env" "~/.pyenv/versions/anaconda3-2.3.0"
             "--virtual-env" "~/.jedienv"))
     ))

(add-hook 'python-mode-hook 'company-mode)
(add-to-list 'company-backends 'company-jedi)

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
