(provide 'init-packages)
;; 设置校验&安装确实插件
(package-initialize)
(setq package-enable-at-startup nil)
(defvar init-package-sourse-refresh nil)
(defun init-install-package (package-name)
  (unless (package-installed-p package-name)
    (unless init-package-sourse-refresh
      (package-refresh-contents)
      (setq init-package-sourse-refresh t))
    (package-install package-name)))
(defmacro init-require-package (package-name)
  (init-install-package package-name)
  (require package-name)
  `(init-install-package ',package-name))

;; 匹配模式
(setq auto-mode-alist
      (append
       '(
	 ("\\.go\\'" . go-mode)
	 ("\\.c\\'" . c-mode)
	 ("\\.h\\'" . c-mode)
;;	 ("\\.md\\'" . markdown-mode)
	 )
       auto-mode-alist))

;; monokai-theme
(init-require-package monokai-theme)
;; company自动补全
(init-require-package company)
(require 'company)
(global-company-mode 1)
(setq company-minimum-prefix-length 1
      company-tooltip-idle-delay 0.3)

;; golang模式
(init-require-package go-mode)
;; company-go需要安装gocode，详见https://github.com/nsf/gocode
(init-require-package company-go)
(add-hook 'go-mode-hook (lambda ()
			  (set (make-local-variable 'company-backends) '(company-go))
			  (company-mode)))
