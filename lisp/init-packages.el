(provide 'init-packages)
(require 'cl)
;; Add Packages
(defvar init-included-packages
  '(
    company
    markdown-mode
       ) "Default packages")
(setq package-selected-packages init-included-packages)

(defun init-installed-packages ()
  (loop for pkg in init-included-packages
        when (not (package-installed-p pkg)) do (return nil)
        finally (return t)))

(unless (init-installed-packages)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg init-included-packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))
;; cl - Common Lisp Extension

(setq auto-mode-alist
      (append
       '(("\\.go\\'" . go-mode))
       auto-mode-alist))

;;(require 'cl)
;; 自动安装插件列表
;;; company
(require 'company)
; 开启全局 Company 补全
(global-company-mode 1)
