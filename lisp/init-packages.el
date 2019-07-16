 ;; cl - Common Lisp Extension
(provide 'init-packages)

(setq auto-mode-alist
      (append
       '(("\\.go\\'" . go-mode))
       auto-mode-alist))

(require 'cl)
 ;; 自动安装插件列表
;;; company
(init-el-require-package company)
(require 'company)
; 开启全局 Company 补全
(global-company-mode 1)
