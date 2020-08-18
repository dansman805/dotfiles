;;; package -- Summary

;;; Commentary:
;; This is my Emacs configuration.

;;; Code:

;; Package configs
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("org"   . "http://orgmode.org/elpa/")
                         ("gnu"   . "http://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

;;; Make emacs pretty
(tool-bar-mode 0)
(menu-bar-mode -1)
(set-frame-font "Fira Code Retina 13")
(set-fontset-font t nil "Symbola" nil 'prepend)

;; Theme
(use-package doom-themes
  :ensure t
  :config
  (load-theme 'doom-one t))

;; Set font and default size
(add-to-list 'default-frame-alist '(height . 24))
(add-to-list 'default-frame-alist '(width . 80))

;; Configure ivy
(use-package ivy
  :ensure t
  :config
  (ivy-mode 1))

;; Configure magit
(use-package magit
  :ensure t)

;; Configure orgmode
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)

(setq-default org-catch-invisible-edits 'smart)

(setq-default org-ellipsis " ⤵")

;; Configure org-roam
;; (use-package org-roam
;;  :ensure t
;;  :config
;;  (setq org-roam-directory "~/org-roam")
;;  (add-hook 'after-init-hook 'org-roam-mode)
;;  )

;; Configure projectile
(use-package projectile
  :ensure t
  :config
  (define-key projectile-mode-map (kbd "M-p") 'projectile-command-map)
  )

;; Configure flycheck
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

;; configure prettify-symbols-mode
(setq-default prettify-symbols-unprettify-at-point 'right-edge)
(global-prettify-symbols-mode)

;; Setting up tabs
(setq-default tab-width 4)
(setq-default tab-width 2 indent-tabs-mode nil)
(setq-default indent-tabs-mode nil)

;; Set up line numbers
(global-display-line-numbers-mode)

;; Always follow symlinks
(setq vc-follow-symlinks t)

;; Single space after periods
(setq sentence-end-double-space nil))

;; Allow 20 MB of memory before garbage collection
(setq gc-cons-threshold 20000000)

;; Don't make backup files
(setq make-backup-files nil)

;; Auto-Save in /tmp
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (elcord flycheck projectile org-roam magit doom-themes use-package helm)))
 '(projectile-mode t nil (projectile)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'narrow-to-region 'disabled nil)
;;; init.el ends here
