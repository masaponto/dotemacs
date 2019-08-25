(use-package company
  :diminish company-mode
  :bind (("M-c" . company-complete)
         :map company-active-map
         ("C-p" . company-select-previous)
         ("C-n" . company-select-next)
         ("C-v" . scroll-up-command)
         ("M-v" . scroll-down-command)
         ("C-h" . backward-delete-char)
         ("<tab>" . company-complete-selection))
  :init (add-hook 'after-init-hook #'global-company-mode)
  :config
  (setq company-idle-delay 0.1
        company-minimum-prefix-length 2)
  (add-to-list 'company-backends 'company-jedi))

(use-package company-quickhelp
  :diminish company-quickhelp-mode
  :config
  (company-quickhelp-mode +1)
  )
