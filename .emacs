;; No splash screen at startup.
(setq inhibit-startup-message t)

;; Zenburn low contrast color theme. Need zenburn-theme.el from 
;; https://github.com/bbatsov/zenburn-emacs in ~/.emacs.d/themes/
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

(load-theme 'zenburn t)

;; Save emacs autosave files (*~) in a specific directory to avoid cluttering
(setq auto-save-file-name-transforms
      `((".*" ,(concat user-emacs-directory "autosave/") t)))

;; Same for emacs backup files.
(setq backup-directory-alist
      `(("." . ,(expand-file-name
                 (concat user-emacs-directory "backups/")))))

;; Add screen real estate.
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)

;; Highlight matching parentheses
(show-paren-mode)

;; Tabs: replace them with 2 spaces.
(setq-default tab-width 2 indent-tabs-mode nil)

;; Do not type the full words 'yes' or 'no' when emacs asks
(defalias 'yes-or-no-p 'y-or-n-p)

;; Turn on auto-complete.
(require 'auto-complete-config)
(ac-config-default)
