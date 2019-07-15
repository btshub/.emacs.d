
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.

;; 设置插件源(清华tuna大学源)
;;(when (>= emacs-version 24)
(require 'package)
(package-initialize)
(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))

;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;; 将函数 open-init-file 绑定到 <f2> 键上
(global-set-key (kbd "<f2>") 'open-init-file)

;; 关闭工具栏，tool-bar-mode 即为一个 Minor Mode
(tool-bar-mode -1)

;; 关闭文件滑动控件
(scroll-bar-mode -1)

;; 显示行号
(global-linum-mode 1)

;;高亮当前行
(global-hl-line-mode 1)

;;将删除功能配置当你选中一段文字之后输入一个字符会替换掉你选中部分的文字。
(delete-selection-mode 1)

;; 更改显示字体大小 10pt
;; http://stackoverflow.com/questions/294664/how-to-set-the-font-size-in-emacs
(set-face-attribute 'default nil :height 100)

;; 关闭启动帮助画面
(setq inhibit-splash-screen 1)

;;加入最近打开过文件的选项让我们更快捷的在图形界面的菜单中打开最近编辑过的文件。
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)

;; 更改光标的样式（不能生效，解决方案见第二集）
(setq-default cursor-type 'bar)

 ;; cl - Common Lisp Extension
(require 'cl)
 ;; 自动安装插件列表

; 开启全局 Company 补全
(global-company-mode 1)

;;使其每次打开编辑器时加载主题
(load-theme 'monokai 1)

;; >>>>>>>>>>>>>>>>>>>> <<<<<<<<<<<<<<<<<<<<
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (go-mode company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
