;;>>>>>>>>>>>>>>>> 模块化框架 <<<<<<<<<<<<<<<<<<<<<<<<

;;├── init.el                        插件源及模块化接口
;;└── lisp
;;    ├── init-better-defaults.el    
;;    ├── init-helper.el
;;    ├── init-keybindings.el        快捷键设置
;;    ├── init-packages.el           插件/功能管理
;;    ├── init-appearance.el         界面及外观设置
;;    ├── init-org.el
;;    └── init-custom.el             用户配置文件，自动生成

;; 设置插件源(清华tuna大学源)
;;(when (>= emacs-version 24)
(provide 'init-packages)
(require 'package)
(package-initialize)
(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))

;;(setq package-enable-at-startup nil)
(defvar init-el-package-archives-refreshed nil)
(defun init-el-install-package (package-name)
  (unless (package-installed-p package-name)
    (unless init-el-package-archives-refreshed
      (package-refresh-contents)
      (setq init-el-package-archives-refreshed t))
    (package-install package-name)))
(defmacro init-el-with-eval-after-load (feature &rest body)
  (declare (indent 1) (debug t))
  (require feature)
  `(with-eval-after-load ',feature ,@body))
(defmacro init-el-require-package (package-name &optional feature-name)
  (init-el-install-package package-name)
  (require (or feature-name package-name))
  `(init-el-install-package ',package-name))

;;模块化配置文件入口
(add-to-list 'load-path "~/.emacs.d/lisp")

;;快捷键设置
(require 'init-keybindings)

;;插件管理文件
(require 'init-packages)

;;界面及外观设置
(require 'init-appearance)

;;用户配置文件，自动生成
(require 'init-custom)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (company go-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
