;; load the file
(require 'gnuplot-mode)

;; automatically open files ending with .gp or .gnuplot in gnuplot mode
(setq auto-mode-alist
(append '(("\\.\\(gp\\|gnuplot\\)$" . gnuplot-mode)) auto-mode-alist))
