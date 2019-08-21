;;(setq py-install-directory "/usr/bin/python3")
;;(add-to-list 'load-path py-install-directory)
;;(require 'python-mode)

;(autoload 'python-mode "python-mode" "Python Mode." t)
;;(autoload 'jedi-core "jedi-core" nil t)


;;(add-hook 'python-mode-hook 'py-autopep8-enable-on-save)
(add-hook 'python-mode-hook 'indent-guide-mode)

;;(add-hook 'python-mode-hook
;;          '(lambda ()
;;             (define-key python-mode-map(kbd "\C-m") 'newline-and-indent)
;;             (define-key python-mode-map(kbd "RET") 'newline-and-indent)
;;             ;;(define-key python-mode-map(kbd "\C-c p") 'py-autopep8)
;;             (setq indent-guide-recursive t)
;;             (setq indent-tabs-mode nil)
;;             (setq indent-level 4)
;;             (setq python-indent 4)
;;             (setq tab-width 4)
;;             ))
;;
