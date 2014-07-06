(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(current-language-environment "UTF-8")
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
 ;;设置Tab
(setq tab-width 4)
(setq default-tab-width 4)
(setq indent-tabs-mode t)

;; 重新定义HOME和PATH环境变量
(setenv "HOME" "E:/Work/EmacsWorkspace")
(setenv "PATH" (concat (getenv "PATH") ";E:/Work/EmacsWorkspace"))

;; 设定默认的文件加载路径
(setq default-directory "~/")

;; 设置有用个人信息
(setq user-full-name "Orefa")
(setq user-mail-address "Orefa@foxmail.com")

;;autoComplete
(add-to-list 'load-path' "~/.emacs.d/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/auto-complete/dict")
(ac-config-default)

;; 设置Go语言高亮
(add-to-list 'load-path' "~/.emacs.d/Go")
(require 'go-mode)
(require 'go-mode-load)

;;配置GoCode
(add-to-list 'load-path' "~/.emacs.d/GoCode")
(require 'go-autocomplete)

;; speedbar
(speedbar 1)
(speedbar-add-supported-extension ".go")
(require 'linum)

;;; show line numbers in buffer
;;; run M-x linum-mode
;;; show line numbers in all buffers
;;; run M-x global-linum-mode
(global-linum-mode)

;;lisp
(add-to-list 'load-path "D:/Program Files/Steel Bank Common Lisp/1.2.1/")  
(add-to-list 'load-path "~/.emacs.d/slime/")  
(setq inferior-lisp-program "sbcl")  
(require 'slime-autoloads)  
(slime-setup '(slime-fancy))  