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
