;; markdown
(use-package markdown-mode
  :defer t
  :mode "\\.md\\'"
  :config
  ;; do not work well
  (defun cleanup-org-tables ()
    (save-excursion
      (goto-char (point-min))
      (while (search-forward "-+-" nil t) (replace-match "-|-"))))
  (add-hook 'markdown-mode-hook 'turn-on-orgtbl)
  ;;(add-hook 'markdown-mode-hook 'orgtbl-mode)
  (add-hook 'markdown-mode-hook
            #'(lambda()
                (add-hook 'after-save-hook 'cleanup-org-tables  nil 'make-it-local))))
