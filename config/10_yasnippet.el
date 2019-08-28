(use-package yasnippet
  :init
  (setq yas-snippet-dirs '("~/.emacs.d/snippets" ;; お好みで!!
                           ;;"~/.emacs.d/mysnippets")
                           ))
  :config
  (yas-global-mode 1)
  (setq yas-triggers-in-field t)
  )
