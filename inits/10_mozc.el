
;; (require 'mozc)

(set-language-environment "Japanese")
(setq default-input-method "japanese-mozc")

;; ;; use UTF-8
(prefer-coding-system 'utf-8)

(setq mozc-candidate-style 'overlay)
(require 'mozc-popup)
(setq mozc-candidate-style 'popup)
;; ;(setq mozc-candidate-style 'echo-area)

(setq quail-japanese-use-double-n t)

(setq mozc-color "blue")


;; ;; 全角半角キーで on/off
;; (global-set-key [zenkaku-hankaku] 'toggle-input-method)
;; (global-set-key (kbd "M-`") 'toggle-input-method)


;; (defadvice mozc-handle-event (around intercept-keys (event))
;;   "Intercept keys muhenkan and zenkaku-hankaku, before passing keys
;;  to mozc-server (which the function mozc-handle-event does), to
;;  properly disable mozc-mode."
;;   (if (member event (list 'zenkaku-hankaku 'muhenkan))
;;       (progn
;;         (mozc-clean-up-session)
;;         (toggle-input-method))
;;     (progn ;(message "%s" event) ;debug
;;       ad-do-it)))
;; (ad-activate 'mozc-handle-event)
