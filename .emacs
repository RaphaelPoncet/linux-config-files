;; No splash screen at startup.
(setq inhibit-startup-message t)

;; Zenburn low contrast color theme. Need zenburn-theme.el from 
;; https://github.com/bbatsov/zenburn-emacs in ~/.emacs.d/themes/
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

(load-theme 'zenburn t)

