(use-package dired
  :config
  (setq dired-dwim-target t)
  ;; diredを2つのウィンドウで開いている時に、デフォルトの移動orコピー先をもう一方のdiredで開いているディレクトリにする
  (setq dired-dwim-target t)
  ;; ディレクトリを再帰的にコピーする
  (setq dired-recursive-copies 'always)
  ;; diredバッファでC-sした時にファイル名だけにマッチするように
  (setq dired-isearch-filenames t)

  (setq dired-hide-details-mode t)

  (defun kill-current-buffer-and/or-dired-open-file ()
      "In Dired, dired-open-file for a file. For a directory, dired-find-file and
kill previously selected buffer."
      (interactive)
      (if (file-directory-p (dired-get-file-for-visit))
          (dired-find-alternate-file)
        (dired-open-file)))
  (bind-keys :map dired-mode-map
             ("C-m" . kill-current-buffer-and/or-dired-open-file)))
