;; add the melpa repo
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; make macos command key be the meta key
(setq mac-command-modifier 'meta)

;; use control key and + (technically =) or - to increase and decrease text size
(global-set-key (kbd "C-=") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)

;; no status line
(setq-default mode-line-format nil)

;; no scrollbar or toolbar
(scroll-bar-mode -1)
(tool-bar-mode -1)

;; automatically added
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("cf922a7a5c514fad79c483048257c5d8f242b21987af0db813d3f0b138dfaf53" default))
 '(package-selected-packages
   '(rainbow-delimiters org-superstar evil-collection magit treemacs doom-modeline all-the-icons doom-themes evil use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; set up use-package
(eval-when-compile
  (add-to-list 'load-path "/Users/liam/.config/emacs/elpa")
  (require 'use-package))

;; evil
(use-package evil
  :init
  (setq evil-want-keybinding nil)
  (evil-mode 1))

;; evil-collection for evil-magit, dired, and markdown
(use-package evil-collection
  :after evil
  :ensure t
  :config
  (evil-collection-init 'magit)
  (evil-collection-init 'dired)
  (evil-collection-init 'markdown-mode))

;; treemacs
(use-package treemacs
  :ensure t
  :defer t)

;; treemacs-evil
(use-package treemacs-evil
  :after (treemacs evil)
  :ensure t)

;; magit
(use-package magit)

;; doom-themes
(use-package doom-themes
  :ensure t
  :config
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t)
  (load-theme 'doom-solarized-dark t)
  (doom-themes-org-config))

;; all-the-icons
(use-package all-the-icons)

;; doom-modeline
(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))

;; org-superstar for nice-looking org docs
(use-package org-superstar
  :init
  (add-hook 'org-mode-hook (lambda () (org-superstar-mode 1))))
