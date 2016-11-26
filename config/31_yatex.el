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


(setq tex-command "latexmk -pdf")
(setq dvi2-command "evince")
(setq bibtex-command "pbibtex")
(setq dviprint-command-format "dvipdfmx -f ptex-ipaex.map")
(add-hook 'yatex-mode-hook '(lambda () (auto-fill-mode -1))) ;; 自動で改行しない

(add-hook 'yatex-mode-hook 'turn-on-reftex)
(add-hook 'yatex-mode-hook 'flyspell-mode)
;; (add-hook 'yatex-mode-hook 'indent-guide-mode)

(add-hook 'yatex-mode-hook 'company-mode)
(add-to-list 'company-backends 'company-math-symbols-unicode)
