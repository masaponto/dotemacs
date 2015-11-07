(require 'org)

(add-to-list 'auto-mode-alist '("\\.txt\\'" . org-mode))

(define-key org-mode-map (kbd "<C-tab>") 'elscreen-next)
(define-key org-mode-map (kbd "<C-return>") 'org-force-cycle-archived)

(add-hook 'org-mode-hook 'flyspell-mode)
