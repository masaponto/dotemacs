(require 'autoinsert)

(add-hook 'find-file-hooks 'auto-insert)

(setq auto-insert-alist nil) ;; デフォルトのひな形を一度全部オフにする。
(setq auto-insert-alist
      (append '(
                (("\\.rb$" . "ruby template")
                 nil ;; ここに"name?"とか書くと、最初にミニバッファで"name?"ってでて入力を促される。入力したものはstrという変数に入る。
                 "#!/usr/bin/env ruby\n"
                 "\n"
                 _ ;; アンダーバーを書いたところにカーソルが移動する
                 )) auto-insert-alist))
(setq auto-insert-alist
      (append '(
                (("\\.py$" . "python template")
                 nil
                 "#!/usr/bin/env python\n"
                 "# -*- coding: utf-8 -*-"
                 "\n"
                 "\n"
                 "def main():\n"
                 "\n"
                 "\n"
                 _
                 "if __name__ == \"__main__\":\n"
                 "    main()\n"
                 )) auto-insert-alist))

(setq auto-insert-alist
      (append '(
                (("\\.sh$" . "shell script template")
                 nil
                 "#!/bin/bash\n"
                 "\n"
                 _
                 )) auto-insert-alist))

(setq auto-insert-alist
      (append '(
                (("\\.kt$" . "kotlin template")
                 nil
                 "fun main(args:Array<String>) {\n"
                 "\n"
                 "}\n"
                 "\n"
                 _
                 )) auto-insert-alist))
