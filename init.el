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
 '(display-line-numbers-type 'gloal)
 '(package-selected-packages '(restclient use-package))
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

(require 'package)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Setup packages
(use-package restclient
  :ensure t)
