;; Package archives
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")))
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-safe-themes
   '("5111a41453244802afd93eed1a434e612a8afbdf19c52384dffab129258bab6e" default))
 '(display-line-numbers-type 'gloal)
 '(package-selected-packages '(warm-night-theme json-mode restclient use-package))
 '(show-parent-mode t))

(set-face-attribute 'default nil :font "Hack-13")
(add-hook 'window-setup-hook 'toggle-frame-maximized t)
(electric-pair-mode 1)
(electric-quote-mode 1)

;; Don’t show toolbar
(tool-bar-mode -1)

;; Highligh line
(global-hl-line-mode t)

;; Delete selection
(delete-selection-mode t)

;; Don't show scrollbar
(scroll-bar-mode -1)

;; Show line number whem programming
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

;; Key bindings
(global-set-key (kbd "C-x C-b") 'buffer-menu)

;; Backups
(setq backup-directory-alist `(("." . ,(concat user-emacs-directory "backups")))
  backup-by-copying t    ; Don't delink hardlinks
  version-control t      ; Use version numbers on backups
  delete-old-versions t  ; Automatically delete excess backups
  kept-new-versions 20   ; how many of the newest versions to keep
  kept-old-versions 5)   ; and how many of the old

(require 'package)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Setup packages
(use-package warm-night-theme
  :ensure t
  :config
  (load-theme 'warm-night))

(use-package restclient
  :ensure t)

(use-package json-mode
  :ensure t)

;; Setup auto-mode
(add-to-list 'auto-mode-alist '("\\.http\\'" . restclient-mode))


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
