;; 快捷键设置文件
(provide 'init-shortkey)
;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;; 将函数 open-init-file 绑定到 <f2> 键上
(global-set-key (kbd "<f2>") 'open-init-file)

(defun open-init-packages-file()
  (interactive)
  (find-file "~/.emacs.d/lisp/init-packages.el"))
(global-set-key (kbd "<f3>") 'open-init-packages-file)
