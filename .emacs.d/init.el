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

;; Configure ido
(use-package ido
  :ensure t
  :config
  (ido-mode 1))

(use-package ido-vertical-mode
  :ensure t
  :config
  (ido-vertical-mode 1)
  )

(setq ido-vertical-define-keys 'C-n-and-C-p-only)

;; Configure magit
(use-package magit
  :ensure t)

;; Configure org-mode and org-roam
(use-package org-roam
  :ensure t
  :config
  (setq org-roam-directory "~/org-roam")
  (add-hook 'after-init-hook 'org-roam-mode)
  )

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

;; Configure god mode
(use-package god-mode
  :ensure t
  :config
  (god-mode)
  (global-set-key (kbd "<escape>") #'god-local-mode)
  (defun my-god-mode-update-modeline ()
    (let ((limited-colors-p (> 257 (length (defined-colors)))))
      (cond (god-local-mode (progn
			      (set-face-background 'mode-line (if limited-colors-p "white" "#d7342a"))
			      (set-face-background 'mode-line-inactive (if limited-colors-p "white" "#d7342a"))))
	    (t (progn
		 (set-face-background 'mode-line (if limited-colors-p "black" "#0a2832"))
		 (set-face-background 'mode-line-inactive (if limited-colors-p "black" "#0a2832")))))))

  (add-hook 'god-mode-enabled-hook #'my-god-mode-update-modeline)
  (add-hook 'god-mode-disabled-hook #'my-god-mode-update-modeline)
  (define-key god-local-mode-map (kbd "z") #'repeat)
  (define-key god-local-mode-map (kbd "i") #'god-local-mode)
  )

;; Setting up tabs
(setq-default tab-width 4)
(setq-default tab-width 2 indent-tabs-mode nil)
(setq-default indent-tabs-mode nil)

;; Always follow symlinks
(setq vc-follow-symlinks t)

;; Single space after periods
(setq sentence-end-double-space nil)

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
