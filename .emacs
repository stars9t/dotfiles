;; I HAVEN'T USED EMACS FOR A LONG TIME.
;; I HAVEN'T USED EMACS FOR A LONG TIME.
;; I HAVEN'T USED EMACS FOR A LONG TIME.
;; I HAVEN'T USED EMACS FOR A LONG TIME.


(require 'package) (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; Indent settings
(setq-default tab-width          4)
(setq-default c-basic-offset     4)
(setq-default standart-indent    4)
(setq-default lisp-body-indent   4)
(global-set-key (kbd "RET") 'newline-and-indent)
(setq lisp-indent-function  'common-lisp-indent-function)

;; Display buffer name
(setq frame-title-format "GNU Emacs: %b")

;; Org-mode settings
(require 'org)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(global-set-key "\C-cl" 'org-store-link)

;; Inhibit startup/splash scree
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)

;; Show-parent-mode settings
(show-paren-mode t)
(setq show-paren-style 'expressioni)

;;(electric-pair-mode 1)
(electric-indent-mode -1)

(delete-selection-mode t)

;; Dele all trash
(tooltip-mode -1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq use-dialog-box nil)
(setq redisplay-dont-pause t)
(setq ring-bell-fucntion 'ignore)

;; Disable auto-save and backup files
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq auto-save-list-file-name nil)

;; Enable numbers of string
(require 'linum)
(line-number-mode t)
(global-linum-mode t)
(column-number-mode t)
(setq linum-format "%2d")

;; Fringe settings
(fringe-mode '(8 . 0)) ;; органичиталь текста только слева
(setq-default indicate-empty-lines t) ;; отсутствие строки выделить глифами рядом с полосой с номером строки
(setq-default indicate-buffer-boundaries 'left) ;; индикация только слева

;; Display file size/time in mode-line
(setq display-time-24hr-format t) ;; 24-часовой временной формат в mode-line
(display-time-mode             t) ;; показывать часы в mode-line
(size-indication-mode          t) ;; размер файла в %-ах

;; Line wrapping
(setq word-wrap t)
(global-visual-line-mode t)

;; Syntax higllight
(require 'font-lock)
(global-font-lock-mode t)
(setq font-lock-maximum-decoration t)

;; Scrolling settings
(setq scroll-step 1)
(setq scroll-margin 10)
(setq scroll-conservatively 10000)

;; Short messages
(defalias 'yes-or-no-p 'y-or-n-p)

(setq x-select-enable-clipboard t)

;; Newlines of end working

(setq require-final-newline t)
(setq next-line-add-newlines nil)

;; Highlight search result
(setq search-highlight t)
(setq query-replace-hightlight t)

;; Delete trailing whitespaces, format buffer and untabify when save buffer
(defun format-current-buffer()
    (indent-region (point-min) (point-max)))
(defun untabify-current-buffer()
    (if (not indent-tabs-mode)
        (untabify (point-min) (point-max)))
    nil)
(add-to-list 'write-file-functions 'untabify-current-buffer)

(set-frame-font "Comic Mono 13" nil t)

;; custom moving keys
(global-set-key ( kbd "M-k") 'previous-line)
(global-set-key ( kbd "M-h") 'backward-char)
(global-set-key ( kbd "M-l") 'forward-char)
(global-set-key ( kbd "M-j") 'next-line)
(global-set-key ( kbd "C-s") 'save-buffer)
(load-theme 'gruvbox-dark-hard 'NO-CONFIRM)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
	("4cf9ed30ea575fb0ca3cff6ef34b1b87192965245776afa9e9e20c17d115f3fb" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
