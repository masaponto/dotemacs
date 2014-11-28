(add-hook 'after-init-hook #'global-flycheck-mode)

;; (flycheck-define-checker c/c++
;;   "A C/C++ checker using g++."
;;   :command ("clang++" "-std=c++11" "-Wall" "-Wextra" source)
;;   :error-patterns  ((error line-start
;;                            (file-name) ":" line ":" column ":" " エラー: " (message)
;;                            line-end)
;;                     (warning line-start
;;                            (file-name) ":" line ":" column ":" " 警告: " (message)
;;                            line-end))
;;   :modes (c-mode c++-mode))
