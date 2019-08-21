;;(setq py-install-directory "/usr/bin/python3")
;;(add-to-list 'load-path py-install-directory)
;;(require 'python-mode)

;(autoload 'python-mode "python-mode" "Python Mode." t)
;;(autoload 'jedi-core "jedi-core" nil t)


;; docstring comment
(defun python-docstring-comment()
  (interactive)
  (let* ((begin-point (point-at-bol))
         (end-point (point-at-eol))
         (function-line (buffer-substring begin-point end-point))
         (space (format "    %s" (replace-regexp-in-string "def.*" "" function-line)))
         (4space (format "    ")))
    (goto-char end-point)
    (insert "\n")
    (insert (format "%s\"\"\"\n" space))
    (insert (format "\n%sArgs:\n" space))

    (when (string-match ".*(\\(.+\\)):" function-line)
      (dolist (arg (split-string (match-string 1 function-line) ","))
        (if (not (equal arg "self"))
            (insert (format "%s%s%s ():\n" space 4space (replace-regexp-in-string "^\\s-+\\|\\s-+$" "" arg)))
          )))

    (insert (format "\n%sReturns:\n" space))
    (insert (format "%s%s\n" space 4space))
    (insert (format "%s\"\"\"" space))))



;;(add-hook 'python-mode-hook 'py-autopep8-enable-on-save)
(add-hook 'python-mode-hook 'indent-guide-mode)

(add-hook 'python-mode-hook
          '(lambda ()
             (define-key python-mode-map(kbd "\C-m") 'newline-and-indent)
             (define-key python-mode-map(kbd "RET") 'newline-and-indent)
             (define-key python-mode-map (kbd "C-c d") 'python-docstring-comment)
             ;;(define-key python-mode-map(kbd "\C-c p") 'py-autopep8)
             (setq indent-guide-recursive t)
             (setq indent-tabs-mode nil)
             (setq indent-level 4)
             (setq python-indent 4)
             (setq tab-width 4)

             ))
