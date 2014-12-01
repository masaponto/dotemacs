
(autoload 'python-mode "python-mode" "Python Mode." t)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python" . python-mode))

;; jedi

(require 'epc)
(require 'auto-complete-config)
(require 'python)

;;;;; PYTHONPATH上のソースコードがauto-completeの補完対象になる ;;;;;

(if (string-match "G570" system-name)
    (setenv "PYTHONPATH" "/usr/lib/python3.4/site-packages")
  )

(if (string-match "KIRA" system-name)
    (setq python-shell-interpreter "python3")
  )


(require 'jedi)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

;; C-tabでタブ移動と補完が競合するので回避
(define-key jedi-mode-map (kbd "<C-tab>") 'tabbar-forward)
(define-key jedi-mode-map (kbd "<C-return>") 'jedi:complete)
