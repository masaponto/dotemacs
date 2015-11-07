(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(setq markdown-command "/usr/bin/markdown")

;;(remove-hook 'before-save-hook 'delete-trailing-whitespace)


;;(add-hook 'markdown-mode-hook (remove-hook 'delete-trailing-whitespace nil))
