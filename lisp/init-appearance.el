;;外观及界面设置
(provide 'init-appearance)

;; 关闭启动帮助画面
(setq inhibit-splash-screen 1)

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

;;自动括号匹配
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;;加入最近打开过文件的选项让我们更快捷的在图形界面的菜单中打开最近编辑过的文件。
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)

;; 更改光标的样式（不能生效，解决方案见第二集）
(setq-default cursor-type 'bar)

;;使其每次打开编辑器时加载主题
(load-theme 'monokai 1)

;;; Use fucking UTF-8
;;(prefer-coding-system 'utf-8)
;;(set-language-environment "UTF-8")
;;(setq locale-coding-system 'utf-8)
;;(set-selection-coding-system 'utf-8)
;;(setq-default buffer-file-coding-system 'utf-8-unix)
