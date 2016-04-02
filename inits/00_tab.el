(setq-default c-basic-offset 4     ;;基本インデント量4
              tab-width 4          ;;タブ幅4
              indent-tabs-mode nil)  ;;インデントをタブでするかスペースでするか

(add-hook 'c++-mode-hook
          '(lambda()
             (c-set-style "stroustrup")))
