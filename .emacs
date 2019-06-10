(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
(add-to-list 'load-path "~/.emacs.d/manual/")

(setq package-enable-at-startup nil)
(package-initialize)

(eval-when-compile
  (require 'use-package))

(use-package ivy
  :ensure t)
(use-package counsel
  :ensure t)
(use-package swiper
  :ensure t)
(use-package magit
  :ensure t)
(use-package dracula-theme
  :ensure t)
(use-package treemacs
  :ensure t)
(use-package treemacs-magit
  :ensure t)
(use-package ag
  :ensure t)
(use-package robe
  :ensure t)
(use-package company
  :ensure t)
(use-package all-the-icons
  :ensure t)
(use-package dockerfile-mode
  :ensure t)
(use-package go-mode
  :ensure t)
(use-package company-go
  :ensure t)
(use-package powerline
  :ensure t)

(company-mode 1)
(global-robe-mode 1)
(which-key-mode 1)
(set-frame-font "Consolas 13" nil t)

(require 'company)
(require 'company-go)


(setq company-tooltip-limit 20)                      ; bigger popup window
(setq company-idle-delay .3)                         ; decrease delay before autocompletion popup shows
(setq company-echo-delay 0)                          ; remove annoying blinking
(setq company-begin-commands '(self-insert-command)) ; start autocompletion only after typing
(add-hook 'go-mode-hook (lambda ()
                          (set (make-local-variable 'company-backends) '(company-go))
                          (company-mode)))

(require 'robe)
(add-hook 'ruby-mode-hook 'robe-mode)
(eval-after-load 'company
  '(push 'company-robe company-backends))

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)

(add-hook 'before-save-hook #'gofmt-before-save)

;; enable this if you want `swiper' to use it
;; (setq search-default-mode #'char-fold-to-regexp)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)
(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)

(global-set-key (kbd "C-,") 'treemacs)
(global-set-key (kbd "C-p") 'ffip)

(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
(setq ivy--regex-fuzzy t)
(require 'find-file-in-project)
;; Essential settings.
(setq inhibit-splash-screen t
      inhibit-startup-message t
      inhibit-startup-echo-area-message t)
;(menu-bar-mode -1)
(tool-bar-mode -1)
(when (boundp 'scroll-bar-mode)
  (scroll-bar-mode -1))
(setq ivy-re-builders-alist
      '((t . ivy--regex-fuzzy)))

(setq make-backup-files nil) ; stop creating backup~ files
(setq auto-save-default nil) ; stop creating #autosave# files
(setq create-lockfiles nil)

(setq org-todo-keywords '((type "TODO" "INVALID" "IN-PROGRESS" "|" "DONE")))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("274fa62b00d732d093fc3f120aca1b31a6bb484492f31081c1814a858e25c72e" "c48551a5fb7b9fc019bf3f61ebf14cf7c9cdca79bcb2a4219195371c02268f11" default)))
 '(linum-format " %5i ")
 '(package-selected-packages
   (quote
    (which-key slim-mode yaml-mode sublime-themes go-complete robe notmuch ggtags dracula-theme use-package))))
(add-hook 'after-init-hook 'global-company-mode)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((((min-colors 16777216)) (:background "#282a36" :foreground "#f8f8f2")) (t (:background "#000000" :foreground "#f8f8f2")))))
