
(use-package haskell-mode
  :defer t
  :mode (("\\.hs$" . haskell-mode)
         ("\\.lhs$" . literate-haskell-mode))
  :config
  (add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
  (add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
  (add-hook 'haskell-mode-hook 'font-lock-mode)
  (add-hook 'haskell-mode-hook 'imenu-add-menubar-index))

(use-package haskell-cabal
  :defer t
  :mode ("\\.cabal\\'" . haskell-cabal-mode)
  )
