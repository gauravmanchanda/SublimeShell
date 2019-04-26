(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(setq package-enable-at-startup nil)
(package-initialize)

(eval-when-compile
  (require 'use-package))

(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f") #'helm-find-files)

(use-package neotree
  :ensure t)
(use-package evil
  :ensure t)
(use-package dracula-theme
  :ensure t)
(use-package helm
  :ensure t)
(use-package company
  :ensure t)
(use-package projectile
  :ensure t)
(use-package all-the-icons
  :ensure t)
(use-package dockerfile-mode
  :ensure t)
(use-package go
  :ensure t)
(use-package powerline
  :ensure t)

(evil-mode 1)
(helm-mode 1)
(company-mode 1)
(global-set-key [f8] 'neotree-toggle)
(setq neo-theme (if (display-graphic-p) 'arrow))
(set-frame-font "Consolas 17" nil t)

;; Essential settings.
(setq inhibit-splash-screen t
      inhibit-startup-message t
      inhibit-startup-echo-area-message t)
;(menu-bar-mode -1)
;(tool-bar-mode -1)
(when (boundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

(evil-define-key 'normal neotree-mode-map (kbd "TAB") 'neotree-enter)
    (evil-define-key 'normal neotree-mode-map (kbd "SPC") 'neotree-quick-look)
    (evil-define-key 'normal neotree-mode-map (kbd "q") 'neotree-hide)
    (evil-define-key 'normal neotree-mode-map (kbd "RET") 'neotree-enter)
    (evil-define-key 'normal neotree-mode-map (kbd "g") 'neotree-refresh)
    (evil-define-key 'normal neotree-mode-map (kbd "n") 'neotree-next-line)
    (evil-define-key 'normal neotree-mode-map (kbd "p") 'neotree-previous-line)
    (evil-define-key 'normal neotree-mode-map (kbd "A") 'neotree-stretch-toggle)
    (evil-define-key 'normal neotree-mode-map (kbd "H") 'neotree-hidden-file-toggle)

(setq org-todo-keywords '((type "TODO" "INVALID" "IN-PROGRESS" "|" "DONE")))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (ggtags helm-gtags dracula-theme use-package helm evil-visual-mark-mode))))
(add-hook 'after-init-hook 'global-company-mode)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((((min-colors 16777216)) (:background "#282a36" :foreground "#f8f8f2")) (t (:background "#000000" :foreground "#f8f8f2")))))
