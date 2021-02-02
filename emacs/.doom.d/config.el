;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Alfred Eichenseher"
      user-mail-address "alf@total-connection.net")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
(setq doom-font (font-spec :family "monospace" :size 14))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c g k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c g d') to jump to their definition and see how
;; they are implemented.

;; ALF -- is this linux or macos?
(cond
 ((string-equal system-type "darwin") ; Mac OS X
  (progn
    (message "Mac OS X")
  (setq alf-system "mac")))
 ((string-equal system-type "gnu/linux") ; linux
  (progn
    (message "Linux")
    (setq alf-system "linux"))

  ))


;; alf use speedkeys

;; Allow pasting from regular clipboard
(setq select-enable-clipboard t)

;; Auto refresh buffers

;; Also auto refresh dired, but be quiet about it
(global-auto-revert-mode 1)
(setq global-auto-revert-non-file-buffers t)
(setq auto-revert-verbose nil)

;; Show keystrokes in progress
(setq echo-keystrokes 0.1)

;; UTF-8 please
(setq locale-coding-system 'utf-8) ; pretty
(set-terminal-coding-system 'utf-8) ; pretty
(set-keyboard-coding-system 'utf-8) ; pretty
(set-selection-coding-system 'utf-8) ; please
(prefer-coding-system 'utf-8) ; with sugar on top

;; Remove text in active region if inserting text
(delete-selection-mode 1)

;; Don't highlight matches with jump-char - it's distracting
(setq jump-char-lazy-highlight-face nil)

;; Always display line and column numbers
(setq line-number-mode t)
(setq column-number-mode t)

;; Save a list of recent files visited. (open recent file with C-x f)
(recentf-mode 1)
(setq recentf-max-saved-items 100) ;; just 20 is too recent

(require 'epa-file)
(epa-file-enable)

;; Never insert tabs
(set-default 'indent-tabs-mode nil)

(load! "+org")




;; ALF highlight lines

(add-hook 'dired-mode-hook 'hl-line-mode)
(add-hook 'package-menu-mode-hook 'hl-line-mode)
(add-hook 'org-agenda-mode-hook 'hl-line-mode)


;; ALF
;; start maximized
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; y or n
(fset 'yes-or-no-p 'y-or-n-p)

;; ALF use python3.7 in org


;;(org-babel-do-load-languages
;; 'org-babel-load-languages
;; '((python . t)
;;(ruby . r)
;;))



(when (eq alf-system "linux")
  (setq org-babel-ruby-command "/home/alf/.rubies/ruby-2.6.1/bin/ruby"))


(when (eq alf-system "mac")
  (setq org-babel-ruby-command "/Users/alfredeichenseher/.rubies/ruby-2.7.0/bin/ruby"))

;; Load async for source blocks
(require 'ob-async)

;; Agenda view
;; look in front 10 days
;; look back 3 days
;; start today
;; (setq org-agenda-span 10
;;      org-agenda-start-on-weekday nil
;;      org-agenda-start-day "-3d")


;; ruby 
  (add-to-list 'auto-mode-alist
               '("\\.\\(?:cap\\|gemspec\\|irbrc\\|gemrc\\|rake\\|rb\\|ru\\|thor\\)\\'" . ruby-mode))
  (add-to-list 'auto-mode-alist
               '("\\(?:Brewfile\\|Capfile\\|Gemfile\\(?:\\.[a-zA-Z0-9._-]+\\)?\\|[rR]akefile\\)\\'" . ruby-mode))


;; origami
;;

;; (after! origami
;;    (bind-keys :map org-super-agenda-header-map
;;              ("<tab>" . origami-toggle-node))

;;   (defvar ap/org-super-agenda-auto-show-groups
;;     '("Next Items" "alpha" "Priority A items" "Priority B items"))

;;   (defun ap/org-super-agenda-origami-fold-default ()
;;     "Fold certain groups by default in Org Super Agenda buffer."
;;     (forward-line 3)
;;     (cl-loop do (origami-forward-toggle-node (current-buffer) (point))
;;              while (origami-forward-fold-same-level (current-buffer) (point)))
;;     (--each ap/org-super-agenda-auto-show-groups
;;       (goto-char (point-min))
;;       (when (re-search-forward (rx-to-string `(seq bol " " ,it)) nil t)
;;         (origami-show-node (current-buffer) (point)))))

;;   :hook ((org-agenda-mode . origami-mode)
;;          ;(org-agenda-finalize . ap/org-super-agenda-origami-fold-default)
;;          )

;;   )
;; Alfis keybindings

;; Use this to switch in tiled windows: use SUPER-left and right

(defun my-previous-window ()
  "Previous window"
  (interactive)
  (other-window -1))

(defun my-next-window ()
  "Next window"
  (interactive)
  (other-window +1))

(global-set-key (kbd "<s-left>") 'my-previous-window)
(global-set-key (kbd "<s-right>") 'my-next-window)


;; doom
(after! evil-org
  (remove-hook 'org-tab-first-hook #'+org-cycle-only-current-subtree-h))

(after! org
  (remove-hook 'org-tab-first-hook #'+org-indent-maybe-h))

(map!
 :g "<s-up>" 'treemacs-select-window
 )
(setq find-file-visit-truename t)
(setq vc-follow-symlinks t)


;; Alf
;; Editor Save Filename under increment Stuff
(defun alf/increment-number-in-file-name (name)
  (with-temp-buffer
    (insert name)
    (search-backward "." nil t)
    (re-search-backward "[0-9]+" nil t)
    ;(skip-chars-forward "0") ;; Would preserve 0s
    (if (looking-at "[0123456789]+")
        (replace-match (number-to-string (1+ (string-to-number (match-string 0)))))
      (insert "-1"))
    (buffer-string)))

(defun write-file-increment ()
  (interactive)
  (write-file (alf/increment-number-in-file-name (buffer-file-name))))


;; Add babel source blocks insert
;;

(map! :map org-mode :leader "t i" #'org-clock-in)
(map! :map org-mode :leader "t o" #'org-clock-out)
(map! :map org-mode :leader "t s" #'org-schedule)
(map! :map org-mode :leader "t -" #'org-time-stamp)
(map! :map org-mode :leader "t ." #'org-time-stamp-inactive)
(map! :map org-mode :leader "m A" #'org-archive-to-archive-sibling)
(map! :map org-mode :leader "a n n" #'org-toggle-narrow-to-subtree)
(map! :map org-mode :leader "a n i" #'org-tree-to-indirect-buffer)
(map! :map org-mode :leader "a r" #'org-reveal)
(map! :map org-mode :leader "a <tab>" #'org-force-cycle-archived)
(map! :map org-mode :leader "o o" #'org-open-at-point)
(map! :map org-mode :leader "l i" #'org-store-link)
(map! :map org-mode :leader "l o" #'org-insert-link)
(map! :leader "w <left>" #'evil-window-rotate-downwards)
(map! :leader "w <right>" #'evil-window-rotate-upwards)
(map! :leader "a ," #'org-insert-structure-template)
(map! :leader "a f" #'font-lock-mode)
(map! :leader "a s s" #'save-some-buffers)
(map! :leader "a 2" #'org-sidebar-toggle)
(map! :leader "a 1" #'org-sidebar-tree-toggle)

(map! :leader "a s i" #'write-file-increment)

;;(map! :leader "a o" #'(persp-add-buffers-by-regexp (Org Agenda)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#21242b" "#ff6c6b" "#98be65" "#ECBE7B" "#51afef" "#c678dd" "#46D9FF" "#bbc2cf"])
 '(custom-enabled-themes (quote (suscolors)))
 '(custom-safe-themes
   (quote
    ("79278310dd6cacf2d2f491063c4ab8b129fee2a498e4c25912ddaa6c3c5b621e" "e074be1c799b509f52870ee596a5977b519f6d269455b84ed998666cf6fc802a" "a7004835dd02c73989032e57574087ec78ce8c2dd0d79f21cdd7423c01d9d2f5" "97d039a52cfb190f4fd677f02f7d03cf7dbd353e08ac8a0cb991223b135ac4e6" default)))
 '(fci-rule-color "#5B6268")
 '(inhibit-startup-screen t)
 '(jdee-db-active-breakpoint-face-colors (cons "#1B2229" "#51afef"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#1B2229" "#98be65"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#1B2229" "#3f444a"))
 '(objed-cursor-color "#ff6c6b")
 '(org-agenda-files
   (quote
    ("/home/alf/org/cloud" "/home/alf/org/cloud/rpg" "/home/alf/org/cloud/projects" "/home/alf/org/cloud/knowledge" "/home/alf/org/cloud/business" "/home/alf/org/cloud/business/clients" "/home/alf/org/cloud/business/tax" "/home/alf/org/cloud/personal" "/home/alf/org/cloud/rpg")))
 '(org-agenda-show-all-dates t)
 '(org-deadline-warning-days 14)
 '(org-export-backends (quote (ascii html icalendar latex md odt)))
 '(org-log-done (quote note))
 '(org-log-repeat (quote note))
 '(org-super-agenda-mode t t)
 '(org-support-shift-select t)
 '(package-selected-packages
   (quote
    (php-mode calfw-org calfw isearch which-key origami org-super-agenda org-mru-clock inf-ruby helm-swoop use-package suscolors-theme smartparens rainbow-mode org-plus-contrib ob-async multishell multiple-cursors helm-org-rifle helm-git-grep god-mode flx-ido eyebrowse diminish)))
 '(pdf-view-midnight-colors (cons "#bbc2cf" "#282c34"))
 '(rainbow-html-colors t)
 '(rainbow-html-colors-major-mode-list (quote (org-mode css-mode php-mode nxml-mode xml-mode)))
 '(rustic-ansi-faces
   ["#282c34" "#ff6c6b" "#98be65" "#ECBE7B" "#51afef" "#c678dd" "#46D9FF" "#bbc2cf"])
 '(vc-annotate-background "#282c34")
 '(vc-annotate-color-map
   (list
    (cons 20 "#98be65")
    (cons 40 "#b4be6c")
    (cons 60 "#d0be73")
    (cons 80 "#ECBE7B")
    (cons 100 "#e6ab6a")
    (cons 120 "#e09859")
    (cons 140 "#da8548")
    (cons 160 "#d38079")
    (cons 180 "#cc7cab")
    (cons 200 "#c678dd")
    (cons 220 "#d974b7")
    (cons 240 "#ec7091")
    (cons 260 "#ff6c6b")
    (cons 280 "#cf6162")
    (cons 300 "#9f585a")
    (cons 320 "#6f4e52")
    (cons 340 "#5B6268")
    (cons 360 "#5B6268")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-level-6 ((t (:inherit outline-6 :foreground "tomato")))))

(setq org-startup-folded t)

(setq undo-limit 80000000                         ; Raise undo-limit to 80Mb
      evil-want-fine-undo t                       ; By default while in insert all changes are one big blob. Be more granular
      auto-save-default t                         ; Nobody likes to loose work, I certainly don't
      truncate-string-ellipsis "…")

(use-package auto-activating-snippets
  :hook (LaTeX-mode . auto-activating-snippets-mode)
  :hook (org-mode . auto-activating-snippets-mode)
  :config
  (aas-set-snippets 'text-mode
                    ;; expand unconditionally
                    "qqsrcruby" "
#+BEGIN_SRC ruby :exports both :results output

%s
#+END_SRC"
                    "qqtimei" (lambda () (interactive)
                                (org-time-stamp-inactive))
                    "qqtimea" (lambda () (interactive)
                                (org-time-stamp))
                   "qqtable1" "
| id | a | b | c | gesamt |
|----+---+---+---+--------|
|    |   |   |   |        |
|----+---+---+---+--------|
|    |   |   |   |        |
#+TBLFM: @>$2=vsum(@I..@II)::@>$3=vsum(@I..@II)::@>$4=vsum(@I..@II)::$5=$2+$3+$4::@>$5=vsum(@I..@II)
"
                    ))
