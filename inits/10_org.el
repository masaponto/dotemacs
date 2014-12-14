(require 'org)

(add-to-list 'auto-mode-alist '("\\.txt\\'" . org-mode))

(define-key org-mode-map (kbd "<C-tab>") 'tabbar-forward)
(define-key org-mode-map (kbd "<C-return>") 'org-force-cycle-archived)
