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

;; 设置插件源(清华tuna源)
;;(when (>= emacs-version 24)
(require 'package)
(package-initialize)
(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))

;;模块化配置文件入口
(add-to-list 'load-path "~/.emacs.d/lisp")
;;快捷键设置
(require 'init-shortkey)

;;插件管理文件
(require 'init-packages)

;;界面及外观设置
(require 'init-appearance)

;;用户配置文件，自动生成
(setq custom-file "./init-custom.el")
(load custom-file)
