(autoload 'go-mode "go-mode" t)
(add-to-list 'auto-mode-alist '("\\.go$" . go-mode))

;;(require 'company-go)

;;(add-hook 'go-mode-hook (lambda ()
;;                          (set (make-local-variable 'company-backends) '(company-go))
;;                          (company-mode)
;;			  (setq tab-width 4)))
;;
;;(setq gofmt-command "goimports")
;;(add-hook 'before-save-hook 'gofmt-before-save)

(custom-set-faces
 '(company-preview
   ((t (:foreground "darkgray" :underline t))))
 '(company-preview-common
   ((t (:inherit company-preview))))
 '(company-tooltip
   ((t (:background "lightgray" :foreground "black"))))
 '(company-tooltip-selection
   ((t (:background "steelblue" :foreground "white"))))
 '(company-tooltip-common
   ((((type x)) (:inherit company-tooltip :weight bold))
    (t (:inherit company-tooltip))))
 '(company-tooltip-common-selection
   ((((type x)) (:inherit company-tooltip-selection :weight bold))
    (t (:inherit company-tooltip-selection)))))
