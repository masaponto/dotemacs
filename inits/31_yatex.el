;;
;; YaTeX
;;
(autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)
(setq auto-mode-alist
      (append '(("\\.tex$" . yatex-mode)
                ("\\.ltx$" . yatex-mode)
                ("\\.cls$" . yatex-mode)
                ("\\.sty$" . yatex-mode)
                ("\\.clo$" . yatex-mode)
                ("\\.bbl$" . yatex-mode)) auto-mode-alist))
(setq YaTeX-kanji-code nil)



(dolist (dir (list
              "$HOME/.local/bin"
              ))
 ;; PATH と exec-path に同じ物を追加します
 (when (and (file-exists-p dir) (not (member dir exec-path)))
   (setenv "PATH" (concat dir ":" (getenv "PATH")))
   (setq exec-path (append (list dir) exec-path))))

(setq tex-command "platex2pdf.sh") ;; 自作したコマンドを
;;(setq tex-command "platex")
(setq dvi2-command "xdvi")
(setq bibtex-command "pbibtex")
(setq dviprint-command-format "dvipdfmx -f ptex-ipaex.map")
(add-hook 'yatex-mode-hook '(lambda () (auto-fill-mode -1))) ;; 自動で改行しない

(add-hook 'yatex-mode-hook 'turn-on-reftex)

(add-hook 'yatex-mode-hook 'flyspell-mode)



;; (autoload 'latex-math-preview-expression "latex-math-preview" nil t)
;; (autoload 'latex-math-preview-insert-symbol "latex-math-preview" nil t)
;; (autoload 'latex-math-preview-save-image-file "latex-math-preview" nil t)
;; (autoload 'latex-math-preview-beamer-frame "latex-math-preview" nil t)

;; (add-hook 'yatex-mode-hook
;;          '(lambda ()
;;          (YaTeX-define-key "p" 'latex-math-preview-expression)
;;          (YaTeX-define-key "\C-p" 'latex-math-preview-save-image-file)
;;          (YaTeX-define-key "j" 'latex-math-preview-insert-symbol)
;;          (YaTeX-define-key "\C-j" 'latex-math-preview-last-symbol-again)
;;          (YaTeX-define-key "\C-b" 'latex-math-preview-beamer-frame)))
;; (setq latex-math-preview-in-math-mode-p-func 'YaTeX-in-math-mode-p)

;; (if (string-match "G570" system-name)
;;     (setq latex-math-preview-command-path-alist
;;           '((latex . "/usr/sbin/latex") (dvipng . "/usr/sbin/dvipng") (dvips . "/usr/sbin/dvips")))
;;   )

;; (if (string-match "KIRA" system-name)
;;     (setq latex-math-preview-command-path-alist
;;           '((latex . "/usr/bin/latex") (dvipng . "/usr/bin/dvipng") (dvips . "/usr/bin/dvips")))
;;   )
