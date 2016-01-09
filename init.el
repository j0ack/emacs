;;    ______
;;   |  ____|
;;   | |__   _ __ ___   __ _  ___ ___
;;   |  __| | '_ ` _ \ / _` |/ __/ __|
;; _ | |____| | | | | | (_| | (__\__ \
;;(_)|______|_| |_| |_|\__,_|\___|___/
;;

;; temp file
(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
      backup-by-copying t    ; Don't delink hardlinks
      version-control t      ; Use version numbers on backups
      delete-old-versions t  ; Automatically delete excess backups
      kept-new-versions 20   ; how many of the newest versions to keep
      kept-old-versions 5    ; and how many of the old
)

;; packages
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("marmalade" . "https://marmalade-repo.org/packages/")
			 ("melpa" . "http://melpa.org/packages/")))
(require 'package)
(package-initialize)



;; themes
(load-theme 'zenburn t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("a444b2e10bedc64e4c7f312a737271f9a2f2542c67caa13b04d525196562bf38" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; snippets
(require 'yasnippet)
(yas-global-mode 1)

;; global keyboard shortcuts
(global-set-key (kbd "<f2>") 'goto-line)

;; my configs
(add-to-list 'load-path "~/.emacs.d/config/")
(require 'python-config)
(require 'web-config)
(require 'org-config)
(require 'mail-config)
