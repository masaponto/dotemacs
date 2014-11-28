;; Haskell

(require 'haskell-mode)
(require 'haskell-cabal)
(add-to-list 'auto-mode-alist '("\\.hs$" . haskell-mode))
(add-to-list 'auto-mode-alist '("\\.lhs$" . literate-haskell-mode))
(add-to-list 'auto-mode-alist '("\\.cabal\\'" . haskell-cabal-mode))

(if (string-match "SILab" system-name)
    (setq haskell-program-name "/usr/sbin/ghci")
  )

(if (string-match "KIRA" system-name)
    (setq haskell-program-name "/usr/local/bin/ghci")
  )

(if (string-match "G570" system-name)
    (setq haskell-program-name "/usr/bin/ghci")
  )

;; #!/usr/bin/env runghc 用
(add-to-list 'interpreter-mode-alist '("runghc" . haskell-mode))

;;# !/usr/bin/env runhaskell 用
(add-to-list 'interpreter-mode-alist '("runhaskell" . haskell-mode))
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)

(autoload 'haskell-mode "haskell-mode")
(autoload 'haskell-cabal "haskell-cabal")

;; ghc-mod
(add-to-list 'exec-path (concat (getenv "HOME") "/.cabal/bin"))

;; 環境によってパスが違う
(if (string-match "SILab" system-name)
    (add-to-list 'load-path "~/.cabal/share/x86_64-linux-ghc-7.8.3/ghc-mod-5.1.1.0")
  (add-to-list 'load-path "~/.cabal/share/x86_64-linux-ghc-7.8.3")
  )

(if (string-match "KIRA" system-name)
    (add-to-list 'load-path "~/.cabal/share/ghc-mod-4.0.2")
  (add-to-list 'load-path "~/.cabal/share/x86_64-linux-ghc-7.6.3")
  )

(if (string-match "G570" system-name)
    (add-to-list 'load-path "~/.cabal/share/x86_64-linux-ghc-7.8.3/ghc-mod-5.2.1.1")
  (add-to-list 'load-path "~/.cabal/share/x86_64-linux-ghc-7.8.3")
)


(autoload 'ghc-init "ghc" nil t)
(ghc-init)
(add-hook 'haskell-mode-hook (lambda () (ghc-init)))
(add-to-list 'ac-sources 'ac-source-ghc-mod)
(add-to-list 'ac-modes 'haskell-mode)
(add-to-list 'ac-modes 'inferior-haskell-mode)

(ac-define-source ghc-mod
  '((depends ghc)
    (candidates . (ghc-select-completion-symbol))
    (symbol . "s")
    (cache)))

(defun my-ac-haskell-mode ()
  (setq ac-sources '(ac-source-words-in-same-mode-buffers ac-source-dictionary ac-source-ghc-mod)))
(add-hook 'haskell-mode-hook 'my-ac-haskell-mode)

(defun my-haskell-ac-init ()
  (when (member (file-name-extension buffer-file-name) '("hs" "lhs"))
    (auto-complete-mode t)
    (setq ac-sources '(ac-source-words-in-same-mode-buffers ac-source-dictionary ac-source-ghc-mod))))

(add-hook 'find-file-hook 'my-haskell-ac-init)

(define-key haskell-mode-map (kbd "C-c C-r") 'inferior-haskell-load-and-run)
(define-key haskell-mode-map (kbd "C-c e") 'ghc-display-errors-to-minibuf)

(add-hook 'inferior-haskell-mode 'auto-complete)
