
(autoload 'org "org"
  "Major mode for editing Markdown files" t)

(add-to-list 'auto-mode-alist '("\\.txt\\'" . org-mode))

(add-hook 'org-mode-hook 'flyspell-mode)
(eval-after-load 'org
  '(progn
     (define-key org-mode-map (kbd "<C-tab>") 'elscreen-next)
     (define-key org-mode-map (kbd "<C-return>") 'org-force-cycle-archived)
     ))
