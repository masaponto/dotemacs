(require 'migemo)
(setq migemo-command "cmigemo")
(setq migemo-options '("-q" "--emacs"))

;; Set your installed path
(if (string-match "SILab" system-name)
    (setq migemo-dictionary "/usr/share/migemo/utf-8/migemo-dict")
  )


(if (string-match "KIRA" system-name)
    (setq migemo-dictionary "/usr/share/cmigemo/utf-8/migemo-dict")
  )


(setq migemo-user-dictionary nil)
(setq migemo-regex-dictionary nil)
(setq migemo-coding-system 'utf-8-unix)
(load-library "migemo")
(migemo-init)
