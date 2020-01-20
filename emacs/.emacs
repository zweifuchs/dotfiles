(require 'package) ;; You might already have this line
(setq package-archives
      '(
        ("elpa" . "https://elpa.gnu.org/packages/")
        ("melpa" . "https://melpa.org/packages/")
        ("org" . "http://orgmode.org/elpa/")        
        ))
(package-initialize) ;; You might already have this line

(unless (package-installed-p 'use-package)
  ;; only fetch the archives if you don't have use-package installed
  ;; (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
;;(setf use-package-always-ensure t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (suscolors)))
 '(custom-safe-themes
   (quote
    ("a7004835dd02c73989032e57574087ec78ce8c2dd0d79f21cdd7423c01d9d2f5" "97d039a52cfb190f4fd677f02f7d03cf7dbd353e08ac8a0cb991223b135ac4e6" default)))
 '(inhibit-startup-screen t)
 '(org-agenda-files
   (quote
    ("/Users/alfredeichenseher/org/cloud/accounts.org" "/Users/alfredeichenseher/org/cloud/knowledge/o2.org" "/Users/alfredeichenseher/org/cloud/knowledge/aftereffects.org" "/Users/alfredeichenseher/org/cloud/knowledge/links.org" "/Users/alfredeichenseher/org/cloud/knowledge/vagrant.org" "/Users/alfredeichenseher/org/cloud/knowledge/blender.org" "/Users/alfredeichenseher/org/cloud/knowledge/bookmarks.org" "/Users/alfredeichenseher/org/cloud/knowledge/osx.org" "/Users/alfredeichenseher/org/cloud/knowledge/golang.org" "/Users/alfredeichenseher/org/cloud/knowledge/synology.org" "/Users/alfredeichenseher/org/cloud/knowledge/orgmode.org" "/Users/alfredeichenseher/org/cloud/knowledge/godot.org" "/Users/alfredeichenseher/org/cloud/knowledge/gamedev.org" "/Users/alfredeichenseher/org/cloud/knowledge/dsa.org" "/Users/alfredeichenseher/org/cloud/knowledge/svganimation.org" "/Users/alfredeichenseher/org/cloud/knowledge/mysql.org" "/Users/alfredeichenseher/org/cloud/knowledge/boltcms.org" "/Users/alfredeichenseher/org/cloud/knowledge/macbook.org" "/Users/alfredeichenseher/org/cloud/knowledge/pilze.org" "/Users/alfredeichenseher/org/cloud/knowledge/linux.org" "/Users/alfredeichenseher/org/cloud/knowledge/drupal.org" "/Users/alfredeichenseher/org/cloud/knowledge/contao4.org" "/Users/alfredeichenseher/org/cloud/knowledge/adobe.org" "/Users/alfredeichenseher/org/cloud/knowledge/javascript.org" "/Users/alfredeichenseher/org/cloud/knowledge/vscode.org" "/Users/alfredeichenseher/org/cloud/knowledge/auto.org" "/Users/alfredeichenseher/org/cloud/knowledge/emacstest.org" "/Users/alfredeichenseher/org/cloud/knowledge/docker.org" "/Users/alfredeichenseher/org/cloud/knowledge/git.org" "/Users/alfredeichenseher/org/cloud/knowledge/server.org" "/Users/alfredeichenseher/org/cloud/knowledge/vim-editor.org" "/Users/alfredeichenseher/org/cloud/knowledge/python.org" "/Users/alfredeichenseher/org/cloud/knowledge/ruby.org" "/Users/alfredeichenseher/org/cloud/knowledge/webdev.org" "/Users/alfredeichenseher/org/cloud/simpleaccounts.org" "/Users/alfredeichenseher/org/cloud/accounts_old.org" "/Users/alfredeichenseher/org/cloud/business/alfredbiz.org" "/Users/alfredeichenseher/org/cloud/business/tax/_taxes.org" "/Users/alfredeichenseher/org/cloud/business/clients/temp.org" "/Users/alfredeichenseher/org/cloud/business/clients/gluecklich.org" "/Users/alfredeichenseher/org/cloud/business/clients/maxkeller.org" "/Users/alfredeichenseher/org/cloud/business/clients/rookman.org" "/Users/alfredeichenseher/org/cloud/business/clients/captaingrafik.org" "/Users/alfredeichenseher/org/cloud/business/clients/decrignis.org" "/Users/alfredeichenseher/org/cloud/business/clients/ontraq_conflict-20190627-212238.org" "/Users/alfredeichenseher/org/cloud/business/clients/captaingrafik_conflict-20180928-103644.org" "/Users/alfredeichenseher/org/cloud/business/clients/trailerhaus.org" "/Users/alfredeichenseher/org/cloud/business/clients/RafaelBernardo/leezafive.org" "/Users/alfredeichenseher/org/cloud/business/clients/RafaelBernardo/headachehurts.org" "/Users/alfredeichenseher/org/cloud/business/clients/ursberg.org" "/Users/alfredeichenseher/org/cloud/business/clients/westwoodbbluegrasband.org" "/Users/alfredeichenseher/org/cloud/business/clients/Tillus/tillus.org" "/Users/alfredeichenseher/org/cloud/business/clients/cdcweb.org" "/Users/alfredeichenseher/org/cloud/business/clients/geiger.org" "/Users/alfredeichenseher/org/cloud/business/clients/nuwave.org" "/Users/alfredeichenseher/org/cloud/business/clients/fakeclient.org" "/Users/alfredeichenseher/org/cloud/business/clients/rafaelbernardo.org" "/Users/alfredeichenseher/org/cloud/business/clients/wup.org" "/Users/alfredeichenseher/org/cloud/business/clients/ontraq.org" "/Users/alfredeichenseher/org/cloud/business/clients/hbh.org" "/Users/alfredeichenseher/org/cloud/business/clients/mutik-gmbh.org" "/Users/alfredeichenseher/org/cloud/business/clients/pamir.org" "/Users/alfredeichenseher/org/cloud/todo.org" "/Users/alfredeichenseher/org/cloud/projects/nas_2018.org" "/Users/alfredeichenseher/org/cloud/projects/mpu.org" "/Users/alfredeichenseher/org/cloud/projects/babeltest.org" "/Users/alfredeichenseher/org/cloud/projects/web_diebergedeswahnsinns.de.org" "/Users/alfredeichenseher/org/cloud/projects/hyrtenhaus.de.org" "/Users/alfredeichenseher/org/cloud/projects/timwedding.org" "/Users/alfredeichenseher/org/cloud/projects/audioghost.org" "/Users/alfredeichenseher/org/cloud/projects/web_westernbiological.org" "/Users/alfredeichenseher/org/cloud/projects/2018_prj.org" "/Users/alfredeichenseher/org/cloud/projects/projects.org" "/Users/alfredeichenseher/org/cloud/notes.org" "/Users/alfredeichenseher/org/cloud/system.org" "/Users/alfredeichenseher/org/cloud/mylinux.org" "/Users/alfredeichenseher/org/cloud/dashboard.org" "/Users/alfredeichenseher/org/cloud/biglist.org" "/Users/alfredeichenseher/org/cloud/personal/beta.org" "/Users/alfredeichenseher/org/cloud/personal/habits.org" "/Users/alfredeichenseher/org/cloud/personal/contacts.org" "/Users/alfredeichenseher/org/cloud/personal/justiz.org" "/Users/alfredeichenseher/org/cloud/personal/rpg.org" "/Users/alfredeichenseher/org/cloud/personal/christmas.org" "/Users/alfredeichenseher/org/cloud/personal/privat.org" "/Users/alfredeichenseher/org/cloud/personal/journal.org" "/Users/alfredeichenseher/org/cloud/personal/hirtenhaus.org" "/Users/alfredeichenseher/org/cloud/personal/hia.org" "/Users/alfredeichenseher/org/cloud/personal/umzug.org" "/Users/alfredeichenseher/org/cloud/personal/birthdays.org" "/Users/alfredeichenseher/org/cloud/personal/alpha.org" "/Users/alfredeichenseher/org/cloud/personal/krankenkasse.org" "/Users/alfredeichenseher/org/cloud/personal/urlaub.org" "/Users/alfredeichenseher/org/cloud/personal/einkauf.org" "/Users/alfredeichenseher/org/cloud/personal/boardgames.org")))
 '(org-agenda-show-all-dates t)
 '(org-deadline-warning-days 14)
 '(org-export-backends (quote (ascii html icalendar latex md odt confluence)))
 '(org-log-done (quote note))
 '(org-log-repeat (quote note))
 '(org-super-agenda-moe t)
 '(org-support-shift-select t)
 '(package-selected-packages
   (quote
    (calfw-org calfw isearch which-key origami org-super-agenda org-mru-clock inf-ruby helm-swoop use-package suscolors-theme smartparens rainbow-mode org-plus-contrib ob-async multishell multiple-cursors helm-org-rifle helm-git-grep god-mode flx-ido eyebrowse diminish)))
 '(rainbow-html-colors t)
 '(rainbow-html-colors-major-mode-list (quote (org-mode css-mode php-mode nxml-mode xml-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-level-6 ((t (:inherit outline-6 :foreground "tomato")))))





;;ruby?
  (add-to-list 'auto-mode-alist
               '("\\.\\(?:cap\\|gemspec\\|irbrc\\|gemrc\\|rake\\|rb\\|ru\\|thor\\)\\'" . ruby-mode))
  (add-to-list 'auto-mode-alist
               '("\\(?:Brewfile\\|Capfile\\|Gemfile\\(?:\\.[a-zA-Z0-9._-]+\\)?\\|[rR]akefile\\)\\'" . ruby-mode))

 

 
(add-to-list 'load-path "~/.emacs.d/lisp/")
(add-to-list 'load-path "~/.emacs.d/lisp/emacs-calfw-master/")
;;(require 'ox-confluence)



(when (display-graphic-p)
  (load-theme 'suscolors t)
  )

(unless (require 'use-package nil t)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package diminish
  :ensure t)


;;Alf - ruby
(unless (package-installed-p 'inf-ruby)
  (package-install 'inf-ruby))




;; alf
;; unset C- and M- digit keys
;; so i can use them for my own stuff ;)
(dotimes (n 10)
  (global-unset-key (kbd (format "C-%d" n)))
  (global-unset-key (kbd (format "M-%d" n)))
  )


;; alf
;; use eyebrowse - set the new 
(require 'eyebrowse)

;; alf
;; org-collector
(require 'org-collector)

(progn
            (define-key eyebrowse-mode-map (kbd "M-1") 'eyebrowse-switch-to-window-config-1)
            (define-key eyebrowse-mode-map (kbd "M-2") 'eyebrowse-switch-to-window-config-2)
            (define-key eyebrowse-mode-map (kbd "M-3") 'eyebrowse-switch-to-window-config-3)
            (define-key eyebrowse-mode-map (kbd "M-4") 'eyebrowse-switch-to-window-config-4)
            (define-key eyebrowse-mode-map (kbd "M-5") 'eyebrowse-switch-to-window-config-5)
            (define-key eyebrowse-mode-map (kbd "M-6") 'eyebrowse-switch-to-window-config-6)
            (define-key eyebrowse-mode-map (kbd "M-7") 'eyebrowse-switch-to-window-config-7)
            (define-key eyebrowse-mode-map (kbd "M-8") 'eyebrowse-switch-to-window-config-8)
            (define-key eyebrowse-mode-map (kbd "M-0") 'eyebrowse-close-window-config)
            (define-key eyebrowse-mode-map (kbd "M-s-<left>") 'eyebrowse-prev-window-config)
            (define-key eyebrowse-mode-map (kbd "M-s-<right>") 'eyebrowse-next-window-config)
            

            (eyebrowse-mode t)
            (setq eyebrowse-new-workspace t))

;; alf use speedkeys
(setq org-use-speed-commands t)

;; Better defaults
;; Allow pasting from regular clipboard
(setq x-select-enable-clipboard t)

;; Auto refresh buffers
(global-auto-revert-mode 1)

;; Also auto refresh dired, but be quiet about it
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

;; Never insert tabs
(set-default 'indent-tabs-mode nil)

;; Show me empty lines after buffer end
(set-default 'indicate-empty-lines t)

;; Keep cursor away from edges when scrolling up/down
(require 'smooth-scrolling)


;; ALFIS MISC STUFF
(global-set-key (kbd "C-x f") 'recentf-open-files) ; open recent files


(defvar --backup-directory "~/.emacs-backups")
(if (not (file-exists-p --backup-directory))
        (make-directory --backup-directory t))
(setq backup-directory-alist `(("." . ,--backup-directory)))

(setq make-backup-files t               ; backup of a file the first time it is saved.
      backup-by-copying t               ; don't clobber symlinks
      version-control t                 ; version numbers for backup files
      delete-old-versions t             ; delete excess backup files silently
      kept-old-versions 6               ; oldest versions to keep when a new numbered backup is made (default: 2)
      kept-new-versions 9               ; newest versions to keep when a new numbered backup is made (default: 2)
      auto-save-default t               ; auto-save every buffer that visits a file
      auto-save-timeout 20              ; number of seconds idle time before auto-save (default: 30)
      auto-save-interval 200            ; number of keystrokes between auto-saves (default: 300)
      )

(setq vc-make-backup-files t)           ; Version also Files in Source control

(global-set-key (kbd "C-x +") 'maximize-window)
(global-set-key (kbd "C-x -") 'balance-windows)

;; ALFIS ORG MODE STUFF:
;; get created at
(defun my/log-todo-creation-date (&rest ignore)
  "Log TODO creation time in the property drawer under the key 'CREATED'."
  (when (and (org-get-todo-state)
             (not (org-entry-get nil "CREATED")))
    (org-set-property "CREATED" (format-time-string "[%Y-%m-%d %a %H:%M]" ))))

(advice-add 'org-insert-todo-heading :after #'my/log-todo-creation-date)
(advice-add 'org-insert-todo-heading-respect-content :after #'my/log-todo-creation-date)
(advice-add 'org-insert-todo-subheading :after #'my/log-todo-creation-date)
(add-hook 'org-capture-before-finalize-hook 
         'my/log-todo-creation-date
)

(add-hook 'org-after-todo-state-change-hook
         'my/log-todo-creation-date
)


;; source highlught

;;enable odt export
(eval-after-load "org"
  '(require 'ox-odt nil t))

;; Fuckin global visual line mode ON!
(global-visual-line-mode 1) 

;; more stuff
(require 'org-habit)
(setq org-src-fontify-natively t)
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)

;(setq org-agenda-files (directory-files-recursively "~/org/cloud/" "\.org$"))

(load-library "find-lisp")
(setq org-agenda-files
   (find-lisp-find-files "~/org/cloud/" "\.org$"))

(setq org-default-notes-file '("~/org/cloud/capture.org"))

(setq org-todo-keywords
      '((sequence "TODO(t)" "PROGRESS(o@/!)" "NEXT(n)" "WAITING(w@/!)" "|" "DONE(d!)" "CANCELLED(c@/!)")
      (sequence "PROJECT(p@!)" "ON HOLD(h!@/!@)" "|" "FINISHED(f!@)" "INACTIVE(i!@/!)")))

(setq org-todo-state-tags-triggers
      (quote (("CANCELLED" ("CANCELLED" . t))
              ("PROJECT" ("WAITING") ("CANCELLED")("PROGRESS") ("PRJ") ("NEXT") ("PRJ" . t) )
              ("WAITING" ("NEXT")("PRJ")("PROGRESS")("WAITING" . t))
              ("PROGRESS" ("NEXT")("PRJ")("WAITING") ("PROGRESS" . t))              
              ("NEXT" ("WAITING")("PROGRESS")("PRJ")("NEXT" . t))
              ("FINISHED" ("WAITING")("NEXT")("PROGRESS")("CANCELLED")("FINISHED" . t))
              ("INACTIVE" ("WAITING")("PRJ")("NEXT")("PROGRESS")("CANCELLED" . t)("FINISHED"))
              ("ON HOLD" ("WAITING")("PRJ")("NEXT")("CANCELLED")("FINISHED") ("HOLD" . t))              
              (done ("WAITING") ("NEXT") ("PRJ") ("HOLD") )
              ("TODO" ("HOLD")("PROGRESS")("WAITING") ("CANCELLED") ("PRJ") ("NEXT") )
              ("NEXT" ("HOLD")("PROGRESS")("WAITING") ("CANCELLED") ("PRJ") )
              ("DONE" ("HOLD")("PROGRESS")("WAITING") ("CANCELLED") ("PRJ") ("NEXT")))))


;; indent
(add-hook 'org-mode-hook
          (lambda ()
            (org-indent-mode t))
          t)


;; from Your Life in Plain text ( http://doc.norang.ca/org-mode.html#OrgFileStructure )
;; Custom Key Bindings
(global-set-key (kbd "<f12>") 'org-agenda)
(global-set-key (kbd "<f5>") 'bh/org-todo)
(global-set-key (kbd "<S-f5>") 'bh/widen)
(global-set-key (kbd "<f7>") 'bh/set-truncate-lines)
(global-set-key (kbd "<f8>") 'org-cycle-agendafiles)
(global-set-key (kbd "<f9> <f9>") 'bh/show-org-agenda)
(global-set-key (kbd "<f9> b") 'bbdb)
(global-set-key (kbd "<f9> c") 'calendar)
(global-set-key (kbd "<f9> f") 'boxquote-insert-file)
(global-set-key (kbd "<f9> g") 'gnus)
(global-set-key (kbd "<f9> h") 'bh/hide-other)
(global-set-key (kbd "<f9> n") 'bh/toggle-next-task-display)

(global-set-key (kbd "<f9> I") 'bh/punch-in)
(global-set-key (kbd "<f9> O") 'bh/punch-out)

(global-set-key (kbd "<f9> o") 'bh/make-org-scratch)

(global-set-key (kbd "<f9> r") 'boxquote-region)
(global-set-key (kbd "<f9> s") 'bh/switch-to-scratch)

(global-set-key (kbd "<f9> t") 'bh/insert-inactive-timestamp)
(global-set-key (kbd "<f9> T") 'bh/toggle-insert-inactive-timestamp)

(global-set-key (kbd "<f9> v") 'visible-mode)
(global-set-key (kbd "<f9> l") 'org-toggle-link-display)
(global-set-key (kbd "<f9> SPC") 'bh/clock-in-last-task)
(global-set-key (kbd "C-<f9>") 'previous-buffer)
(global-set-key (kbd "M-<f9>") 'org-toggle-inline-images)
(global-set-key (kbd "C-x n r") 'narrow-to-region)
(global-set-key (kbd "C-<f10>") 'next-buffer)
(global-set-key (kbd "<f11>") 'org-clock-goto)
(global-set-key (kbd "<f11>") 'alf-org-clock-in)
(global-set-key (kbd "C-<f11>") 'org-clock-in)
(global-set-key (kbd "C-s-<f12>") 'bh/save-then-publish)
(global-set-key (kbd "C-c c") 'org-capture)

;; Alf - helm plz
(global-set-key (kbd "M-x") 'helm-M-x)



;; ALF 
(defun alf-org-clock-in()
    (interactive)
(org-clock-goto 2))

(setq org-clock-history-length 23)

(setq org-duration-format (quote h:mm))
(setq org-time-clocksum-format (quote (:hours "%d" :require-hours t :minutes ":%02d" :require-minutes t)))


;; ALF - for quick select tasks

;; ALF END

(defun bh/hide-other ()
  (interactive)
  (save-excursion
    (org-back-to-heading 'invisible-ok)
    (hide-other)
    (org-cycle)
    (org-cycle)
    (org-cycle)))

(defun bh/set-truncate-lines ()
  "Toggle value of truncate-lines and refresh window display."
  (interactive)
  (setq truncate-lines (not truncate-lines))
  ;; now refresh window display (an idiom from simple.el):
  (save-excursion
    (set-window-start (selected-window)
                      (window-start (selected-window)))))

(defun bh/make-org-scratch ()
  (interactive)
  (find-file "/tmp/publish/scratch.org")
  (gnus-make-directory "/tmp/publish"))

(defun bh/switch-to-scratch ()
  (interactive)
  (switch-to-buffer "*scratch*"))


(setq org-treat-S-cursor-todo-selection-as-state-change nil)
;;allows changing todo states with S-left and S-right skipping all of the normal processing when entering or leaving a todo state. This cycles through the todo states but skips setting timestamps and entering notes which is very convenient when all you want to do is fix up the status of an entry.

(setq org-use-fast-todo-selection t)
;; allows to switch states with key

;; Remove empty LOGBOOK drawers on clock out
(defun bh/remove-empty-drawer-on-clock-out ()
  (interactive)
  (save-excursion
    (beginning-of-line 0)
    (org-remove-empty-drawer-at "LOGBOOK" (point))))

;;(add-hook 'org-clock-out-hook 'bh/remove-empty-drawer-on-clock-out 'append)


;; Alf capture at point
(defun alf/org-capture-at-point ()
  "Insert an org capture template at point."
  (interactive)
  (org-capture 0))


;; I use C-c c to start capture mode
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-c d") 'alf/org-capture-at-point)

;; Capture templates for: TODO tasks, Notes, appointments, phone calls, meetings, and org-protocol
(setq org-capture-templates
      (quote (("t" "todo" entry (file+olp "~/org/cloud/dashboard.org" "INCOMING" "TASKS")
               "* TODO %?\n:PROPERTIES:\n:CREATED: %U\n:END:\n%a\n\n\n")
              ("i" "INTERRUPT" entry (file+olp "~/org/cloud/dashboard.org" "INCOMING" "INTERRUPTS")
               "* TODO %?\n:PROPERTIES:\n:CREATED: %U\n:END:\n%a\n" :clock-in t :clock-resume t)
              ("s" "Scheduled todo" entry (file+olp "~/org/cloud/dashboard.org" "INCOMING" "TASKS")
               "* TODO %?\n:PROPERTIES:\n:CREATED: %U\n:END:\n%a\nSCHEDULED: %t\n\n")
              ("n" "note" entry (file+olp "~/org/cloud/dashboard.org" "INCOMING" "NOTES")
               "* %? :NOTE:\n:PROPERTIES:\n:CREATED: %U\n:END:\n%U\n%a\n" :clock-in t :clock-resume t)
              ("b" "Bookmark" entry (file+olp "~/org/cloud/knowledge/bookmarks.org" "INCOMING")
               "* %? \n%U\n%a\n" :clock-keep t )
              ("j" "Journal" entry (file+olp+datetree "~/org/cloud/personal/journal.org" "log")
               "* %?\n:PROPERTIES:\n:CREATED: %U\n:END:\n%U\n" :clock-in t :clock-resume t)
              ("w" "org-protocol" entry (file+olp "~/org/cloud/dashboard.org" "INCOMING")
               "* TODO Review %c\n%U\n" :immediate-finish t)
              ("r" "Rechnung" entry (file+headline "~/org/cloud/business/alfredbiz.org" "Ausgaben_alle")
               "* TODO %^{PROMPT|Rechungsname} :COST:
:PROPERTIES:
:KONTO: %^{Welches Konto?}
:YEAR: %^{Jahr?}
:MONTH: %^{Monat?}
:ID: %^{ID?}
:NETTO: %^{netto}
:UST: %^{Ust}
:BRUTTO: %^{brutto}
:LINK: [[%^{link to file}][pdf]]
:END: \n%^u\n%
\n%?")
              ("m" "Meeting" entry (file+olp "~/org/cloud/dashboard.org" "INCOMING" "INTERRUPTS")               
               "* MEETING with %? :PAUSE:\n:PROPERTIES:\n:CREATED: %U\n:END:\n%U" :clock-in t :clock-resume t)
              ("p" "PAUSE - All thing have a break")               
              ("pp" "PAUSE" entry (file+olp "~/org/cloud/dashboard.org" "INCOMING" "BREAKS")               
               "* PAUSE with %? :PAUSE:\n%U" :clock-in t :clock-resume t)
              ("pt" "PAUSE ten mins" entry (file+olp "~/org/cloud/dashboard.org" "INCOMING" "BREAKS")               
               "* Ten Minute Break with %? :PAUSE:\n%U" :clock-in t :clock-resume t)
              ("pc" "Coffee Break" entry (file+olp "~/org/cloud/dashboard.org" "INCOMING" "BREAKS")               
               "* PAUSE with %? :PAUSE:\n%U" :clock-in t :clock-resume t)
              ("pb" "Big Break" entry (file+olp "~/org/cloud/dashboard.org" "INCOMING" "BREAKS")               
               "* PAUSE with %? :PAUSE:\n%U" :clock-in t :clock-resume t)

              ("f" "Phone call" entry (file "~/org/cloud/todo.org")
               "* PHONE %? :PHONE:\n%U" :clock-in t :clock-resume t)
              ("h" "Habit" entry (file "~/org/cloud/todo.org")
               "* NEXT %?\n%U\n%a\nSCHEDULED: %(format-time-string \"%<<%Y-%m-%d %a .+1d/3d>>\")\n:PROPERTIES:\n:STYLE: habit\n:REPEAT_TO_STATE: NEXT\n:END:\n"))))



;; Do not dim blocked tasks
(setq org-agenda-dim-blocked-tasks nil)

;; Compact the block agenda view
(setq org-agenda-compact-blocks t)
;; 

;;
;; 7 Refiling tasks:
; Targets include this file and any file contributing to the agenda - up to 9 levels deep
(setq org-refile-targets (quote ((nil :maxlevel . 9)
                                 (org-agenda-files :maxlevel . 9))))

; Use full outline paths for refile targets - we file directly with IDO
(setq org-refile-use-outline-path t)

; Targets complete directly with IDO
(setq org-outline-path-complete-in-steps nil)

; Allow refile to create parent tasks with confirmation
(setq org-refile-allow-creating-parent-nodes (quote confirm))

; Use IDO for both buffer and file completion and ido-everywhere to t
(setq org-completion-use-ido t)
                                        ;
;(setq ido-everywhere t)
(setq ido-max-directory-size 100000)
(ido-mode (quote both))
; Use the current window when visiting files and buffers with ido
(setq ido-default-file-method 'selected-window)
(setq ido-default-buffer-method 'selected-window)
; Use the current window for indirect buffer display
(setq org-indirect-buffer-display 'current-window)
; ALF log time when closed

;;; Alf cua Mode:
(cua-mode t)


;; ALF move subtree
(defun alf/org-move-subtree-to-other-window()
    (interactive)
    (org-previous-visible-heading 0)
    (my-next-window)
    (org-previous-visible-heading 0)
    (my-next-window)
    (org-cut-subtree)
    (my-next-window)
    (org-paste-subtree)
    (my-next-window)

    (setq this-command 'dummy/entry)
)

(global-set-key (kbd "<C-M-left>") 'alf/org-move-subtree-to-other-window)
(global-set-key (kbd "<C-M-right>") 'alf/org-move-subtree-to-other-window)

;;; ALF
(defun org-goto-last-heading-in-tree ()
  (interactive)
  (org-forward-heading-same-level 100)
  (outline-next-visible-header 1)
;  (outline-previous-visible-heading 1)   ; 2. Move to last heading in previous tree
 ; (let ((org-special-ctrl-a/e t))        ; 3. Ignore tags when
  ;  (org-end-of-line)))                  ;    moving to the end of the line
)
(define-key org-mode-map (kbd "C-c g") 'org-goto-last-heading-in-tree)

;;;; Refile settings
; Exclude DONE state tasks from refile targets
(defun bh/verify-refile-target ()
  "Exclude todo keywords with a done state from refile targets"
  (not (member (nth 2 (org-heading-components)) org-done-keywords)))

(setq org-refile-target-verify-function 'bh/verify-refile-target)

;; Do not dim blocked tasks
(setq org-agenda-dim-blocked-tasks nil)

;; Compact the block agenda view
(setq org-agenda-compact-blocks t)

;; Custom agenda command definitions
(setq org-agenda-custom-commands
      (quote (("N" "Notes" tags "NOTE"
               ((org-agenda-overriding-header "Notes")
                (org-tags-match-list-sublevels t)))
              ("h" "Habits" tags-todo "STYLE=\"habit\""
               ((org-agenda-overriding-header "Habits")
                (org-agenda-sorting-strategy
                 '(todo-state-down effort-up category-keep))))

              
              ("q" "Only Tasks with WORK tag"
               ((agenda "" ((org-agenda-span 1)
                            (org-agenda-start-on-weekday nil)
                            (org-agenda-start-day "0d")
                            (org-agenda-repeating-timestamp-show-all t)
                            (org-agenda-tag-filter-preset '("+WORK"))
                            )
                        ))
               )
              ("u" . "SUPER Agenda")


              ("ux" "SUPER Agenda"
               (

                (tags-todo "+TODO=\"PROGRESS\"" (
                                   (org-super-agenda-groups '(                                    
                                                              (:name "PROGRESS"
                                                                     :order 4)
                                                              )
                                                            )))
                
                (agenda "" (
                            (org-agenda-span 1)
                            (org-agenda-compact-blocks nil)
                            (org-agenda-start-day "0d")
                            (org-super-agenda-groups '(
                                                       (:name "Today"
                                                              :scheduled today
                                                              :time-grid t
                                                              :order 5
                                                              )
                                                       (:name "In Progress"
                                                              :todo ("PROGRESS")
                                                              :order 10
                                                              )                                                       
                                                       (:name "Next Items"
                                                              :tag ("NEXT" "outbox")
                                                              :order 20
                                                              )

                                                       (:name "Urgent"
                                                              :priority "A"
                                                              :order 30
                                                              )                                                 
                                                       
                                                       (:name "Work related"
                                                              :tag ("WORK" "PAID")
                                                              :order 40
                                                              )

                                                       (:name "Privat related"
                                                              :tag ("PRIV" "UNPAID")
                                                              :order 50
                                                              )
                                                       (:name "ORGA related"
                                                              :tag ("ORGA")
                                                              :order 60
                                                              )
                                                       (:name "Projects"
                                                              :todo "PROJECT"
                                                              :order 70
                                                              )
                                                       
                                                       ))))

                                (tags-todo "NEXT" (
                                   (org-super-agenda-groups '(                                    
                                                              (:name "NEXT"
                                                                     :order 90)
                                                              )
                                                            ))
                           )

                            (agenda "" (
                                        (org-agenda-span 14)
                                        (org-agenda-compact-blocks nil)
                                        (org-agenda-start-on-weekday nil)
                            (org-agenda-start-day "+1d")
                            (org-super-agenda-groups '(
                                                       (:auto-category t
                                                              :order 1
                                                              )
                                                       
                                                       ))))
 

                
                
                ))


              
              ("ui" "SUPER Projects"
               (
                (tags-todo "+ACTIVE+PRJ+TODO=\"PROJECT\"" (
                                   (org-super-agenda-groups '(                                    
                                                              (:name "Aktive Projekte"
                                                               :order 100)
                                                              )
                                                            ))
                           )
                (tags-todo "NEXT" (
                                   (org-super-agenda-groups '(                                    
                                                              (:name "NEXT"
                                                               :order 90)
                                                              )
                                                            ))
                           )
                (tags-todo "+INACTIVE+PRJ+TODO=\"PROJECT\"" (
                                   (org-super-agenda-groups '(                                    
                                                              (:name "Inaktive Projekte"
                                                               :order 10)
                                                              )
                                                            ))
                           )
                
                (tags-todo "+PRJ+TODO=\"PROJECT\"" (
                                                    (org-super-agenda-groups '(
                                                                               (
                                                                                :name "Alle anderen Projekte"
                                                                                :auto-category t
                                                                                :order 60
                                                                                )  
                                                                               )))))
               )
              
              ("w" "All Active Projects" ((tags-todo "+PRJ+TODO=\"PROJECT\"") (todo "NEXT")
                                          ))
              
              ("Y" "Agenda"
               ((agenda "" nil)
                (tags "REFILE"
                      ((org-agenda-overriding-header "Tasks to Refile")
                       (org-tags-match-list-sublevels nil)))
                (tags-todo "-CANCELLED/!"
                           ((org-agenda-overriding-header "Stuck Projects")
                            (org-agenda-skip-function 'bh/skip-non-stuck-projects)
                            (org-agenda-sorting-strategy
                             '(category-keep))))
                (tags-todo "-HOLD-CANCELLED/!"
                           ((org-agenda-overriding-header "Projects")
                            (org-agenda-skip-function 'bh/skip-non-projects)
                            (org-tags-match-list-sublevels 'indented)
                            (org-agenda-sorting-strategy
                             '(category-keep))))
                (tags-todo "-CANCELLED/!NEXT"
                           ((org-agenda-overriding-header (concat "Project Next Tasks"
                                                                  (if bh/hide-scheduled-and-waiting-next-tasks
                                                                      ""
                                                                    " (including WAITING and SCHEDULED tasks)")))
                            (org-agenda-skip-function 'bh/skip-projects-and-habits-and-single-tasks)
                            (org-tags-match-list-sublevels t)
                            (org-agenda-todo-ignore-scheduled bh/hide-scheduled-and-waiting-next-tasks)
                            (org-agenda-todo-ignore-deadlines bh/hide-scheduled-and-waiting-next-tasks)
                            (org-agenda-todo-ignore-with-date bh/hide-scheduled-and-waiting-next-tasks)
                            (org-agenda-sorting-strategy
                             '(todo-state-down effort-up category-keep))))
                (tags-todo "-REFILE-CANCELLED-WAITING-HOLD/!"
                           ((org-agenda-overriding-header (concat "Project Subtasks"
                                                                  (if bh/hide-scheduled-and-waiting-next-tasks
                                                                      ""
                                                                    " (including WAITING and SCHEDULED tasks)")))
                            (org-agenda-skip-function 'bh/skip-non-project-tasks)
                            (org-agenda-todo-ignore-scheduled bh/hide-scheduled-and-waiting-next-tasks)
                            (org-agenda-todo-ignore-deadlines bh/hide-scheduled-and-waiting-next-tasks)
                            (org-agenda-todo-ignore-with-date bh/hide-scheduled-and-waiting-next-tasks)
                            (org-agenda-sorting-strategy
                             '(category-keep))))
                (tags-todo "-REFILE-CANCELLED-WAITING-HOLD/!"
                           ((org-agenda-overriding-header (concat "Standalone Tasks"
                                                                  (if bh/hide-scheduled-and-waiting-next-tasks
                                                                      ""
                                                                    " (including WAITING and SCHEDULED tasks)")))
                            (org-agenda-skip-function 'bh/skip-project-tasks)
                            (org-agenda-todo-ignore-scheduled bh/hide-scheduled-and-waiting-next-tasks)
                            (org-agenda-todo-ignore-deadlines bh/hide-scheduled-and-waiting-next-tasks)
                            (org-agenda-todo-ignore-with-date bh/hide-scheduled-and-waiting-next-tasks)
                            (org-agenda-sorting-strategy
                             '(category-keep))))
                (tags-todo "-CANCELLED+WAITING|HOLD/!"
                           ((org-agenda-overriding-header (concat "Waiting and Postponed Tasks"
                                                                  (if bh/hide-scheduled-and-waiting-next-tasks
                                                                      ""
                                                                    " (including WAITING and SCHEDULED tasks)")))
                            (org-agenda-skip-function 'bh/skip-non-tasks)
                            (org-tags-match-list-sublevels nil)
                            (org-agenda-todo-ignore-scheduled bh/hide-scheduled-and-waiting-next-tasks)
                            (org-agenda-todo-ignore-deadlines bh/hide-scheduled-and-waiting-next-tasks)))
                (tags "-REFILE/"
                      ((org-agenda-overriding-header "Tasks to Archive")
                       (org-agenda-skip-function 'bh/skip-non-archivable-tasks)
                       (org-tags-match-list-sublevels nil))))
               nil))))


;; Super agenda config kram

(use-package org-super-agenda
  :ensure t
  :config
  (org-super-agenda-mode t)
  )

(use-package origami
  :ensure t
  :config

  (bind-keys :map org-super-agenda-header-map
             ("<tab>" . origami-toggle-node))
  
  (defvar ap/org-super-agenda-auto-show-groups
    '("Next Items" "alpha" "Priority A items" "Priority B items"))

  (defun ap/org-super-agenda-origami-fold-default ()
    "Fold certain groups by default in Org Super Agenda buffer."
    (forward-line 3)
    (cl-loop do (origami-forward-toggle-node (current-buffer) (point))
             while (origami-forward-fold-same-level (current-buffer) (point)))
    (--each ap/org-super-agenda-auto-show-groups
      (goto-char (point-min))
      (when (re-search-forward (rx-to-string `(seq bol " " ,it)) nil t)
        (origami-show-node (current-buffer) (point)))))

  :hook ((org-agenda-mode . origami-mode)
         ;(org-agenda-finalize . ap/org-super-agenda-origami-fold-default)
         )
)



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

(define-key org-mode-map (kbd "M-S-C-<left>") nil)
(define-key org-mode-map (kbd "M-S-C-<right>") nil)



    (global-set-key (kbd "M-S-C-<left>") 'shrink-window-horizontally)
    (global-set-key (kbd "M-S-C-<right>") 'enlarge-window-horizontally)
    (global-set-key (kbd "M-S-C-<down>") 'shrink-window)
    (global-set-key (kbd "M-S-C-<up>") 'enlarge-window)




;; Add Move up and down

(defun move-line-up ()
  "Move up the current line."
  (interactive)
  (transpose-lines 1)
  (forward-line -2)
  (indent-according-to-mode))

(defun move-line-down ()
  "Move down the current line."
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1)
  (indent-according-to-mode))

(global-set-key [(meta shift up)]  'move-line-up)
(global-set-key [(meta shift down)]  'move-line-down)

;; More Orgmode changes



;; I prefer to schedule all new tasks to today’s date as a default, so I update the org-capture-templates variable
;; 

;;(setq org-capture-templates
;;      '(("t" "todo" entry (file+headline "~/todo.org" "Tasks")y
;;         "* TODO [#A] %?\nSCHEDULED: %(org-insert-time-stamp (org-read-date nil t \"+0d\"))\n")))

;;sort tasks in order of when they are due and then by priority
;;(setq org-agenda-sorting-strategy
;;  (quote
;;   ((agenda deadline-up priority-down)
;;    (todo priority-down category-keep)
;;    (tags priority-down category-keep)
;;    (search category-keep))))


;;open agenda in current window
(setq org-agenda-window-setup (quote current-window))
;;show me tasks scheduled or due in next fortnight
;;(setq org-agenda-span (quote fortnight))
;;don't show tasks as scheduled if they are already shown as a deadline
;;(setq org-agenda-skip-scheduled-if-deadline-is-shown t)
;;don't give awarning colour to tasks with impending deadlines
;;if they are scheduled to be done
;;(setq org-agenda-skip-deadline-prewarning-if-scheduled (quote pre-scheduled))
;; moshi
;;(setq org-agenda-start-day "-1d") ;; start agenda view yesterday
;;(setq org-agenda-ndays 7) ;; show me 15 days

;;(setq org-agenda-skip-scheduled-if-done t
;;      org-agenda-skip-deadline-if-done  t)

(fset 'addScheduledTodo
      [M-return S-right return ?\C-c ?\C-s return ?\C-u ?\C-c ?! return up up end ? ])      


;; ALF custom shortcuts
(global-set-key (kbd "<f5>") 'addScheduledTodo) ; Alt+a
(global-set-key (kbd "C-c r") 'org-refile) ; Alt+a
(global-set-key (kbd "C-x C-d") 'org-decrypt-entries) ; Alt+a



(setq org-return-follows-link t)


;; ALF Save recent clocked tasks
(setq org-clock-persist t)
(setq org-clock-persist-file "~/org-clock/org-clock-save.el")
(org-clock-persistence-insinuate)

;; Godmode stuff
(use-package god-mode
  :ensure t
  :defines saved-god-mode-line-faces
  :config
 (require 'god-mode-isearch)
 (add-to-list 'god-exempt-major-modes 'term-mode)
 (add-to-list 'god-exempt-major-modes 'magit-mode)
 (add-to-list 'god-exempt-major-modes 'org-agenda-mode)
 (add-to-list 'god-exempt-major-modes 'calc-mode)
 (add-to-list 'god-exempt-major-modes 'ibuffer-mode)
;; (defun god-mode-get-out()
;;   )
 (defun god-mode-update-cursor ()
  (let ((limited-colors-p (> 257 (length (defined-colors)))))
    (cond (god-local-mode (progn
                            (set-face-background 'mode-line (if limited-colors-p "white" "#e9e2cb"))
                            (set-face-background 'mode-line-inactive (if limited-colors-p "white" "#e9e2cb"))))
          (t (progn
               (set-face-background 'mode-line (if limited-colors-p "black" "#0a2832"))
               (set-face-background 'mode-line-inactive (if limited-colors-p "black" "#0a2832")))))))

 (add-hook 'god-mode-enabled-hook 'god-mode-update-cursor)
 (add-hook 'god-mode-disabled-hook 'god-mode-update-cursor)
 :bind (:map god-mode-isearch-map
             ("<escape>" . god-mode-isearch-disable))
 :bind (:map god-local-mode-map
             ("i" . god-local-mode)
             ("<return>" . god-local-mode)
             ("<backspace>" . god-local-mode)
             ("V" . mark-current-line))
 :bind 
        ("<f2>" . 'god-local-mode) 
 
  )

;; (global-set-key (kbd "<f2>") 'god-mode-all)
;; (setq god-exempt-major-modes nil)
;; (setq god-exempt-predicates nil)

;; isearch
(use-package isearch
  :config
  (require 'god-mode-isearch)
  :bind
  (("C-S-r" . isearch-backward-regexp)
   ("C-S-s" . isearch-forward-regexp)
   :map isearch-mode-map
   ("<M-down>" . isearch-ring-advance)
   ("<M-up>" . isearch-ring-retreat)
   ("<escape>" . god-mode-isearch-activate)
   :map minibuffer-local-isearch-map
   ("<M-down>" . next-history-element)
   ("<M-up>" . previous-history-element)))

;; whichkey
(use-package which-key
  :ensure t)
(which-key-mode)

;; ALF Miscs:
(display-time-mode 1)

;; ALF
(use-package helm-swoop
  :ensure t
  :bind
  (("M-o" . helm-swoop)
   ("M-O" . helm-swoop-back-to-last-point)
   ("C-c M-o" . helm-multi-swoop)
   ;; ("C-c M-O" . helm-multi-swoop-all)
   )
  :config
  ;; Save buffer when helm-multi-swoop-edit complete
  (setq helm-multi-swoop-edit-save t)
  ;; If this value is t, split window inside the current window
  (setq helm-swoop-split-with-multiple-windows nil)
  ;; Split direcion. 'split-window-vertically or 'split-window-horizontally
  (setq helm-swoop-split-direction 'split-window-horizontally)
  ;; If nil, you can slightly boost invoke speed in exchange for text color
  (setq helm-swoop-speed-or-color t)
  (bind-keys :map isearch-mode-map
             ("M-o" . helm-swoop-from-isearch))
  (bind-keys :map helm-swoop-map
             ("M-o" . helm-multi-swoop-all-from-helm-swoop)
             ;; ("M-i" . helm-swoop-from-evil-search)
             )
  )


;; multiple cursors
(use-package multiple-cursors
  :ensure t
  :bind (("s-1" . mc/mark-next-like-this)
         ("s-2" . mc/unmark-next-like-this)
         ("s-3" . mc/mark-all-in-region)   
         ("C-S-<mouse-1>" . mc/add-cursor-on-click)))

;; ALF - Show matching and unmatched delimiters, and auto-close them as well.

(use-package smartparens-config
  :ensure smartparens
  :config
  ;; (use-package smartparens-config)
  ;; ;; highlights matching pairs
  ;; (setq sp-base-key-bindings 'paredit)
  ;; (setq sp-autoskip-closing-pair 'always)
  ;; (sp-use-paredit-bindings)
  ;; (sp-pair "{" nil :post-handlers
  ;;          '(((lambda (&rest _ignored)
  ;;               (prelude-smart-open-line-above)) "RET")))
  (show-smartparens-global-mode t)

  (add-hook 'prog-mode-hook 'turn-on-smartparens-mode)
  (add-hook 'LaTeX-mode-hook 'turn-on-smartparens-mode)
  (add-hook 'markdown-mode-hook 'turn-on-smartparens-mode))


;; ALF
;; helm etc

;; Helm - incremental completion framework
(use-package helm
  :ensure t
  :bind (("M-a" . helm-M-x)
         ("C-x C-f" . helm-find-files)
         ("C-x f" . helm-recentf)
         ("C-SPC" . helm-dabbrev)
         ("M-y" . helm-show-kill-ring)
         ("C-x C-r" . helm-recentf)
         ("C-x b" . helm-buffers-list))
  :bind (:map helm-map
	      ("M-i" . helm-previous-line)
	      ("M-k" . helm-next-line)
	      ("M-I" . helm-previous-page)
	      ("M-K" . helm-next-page)
	      ("M-h" . helm-beginning-of-buffer)
	      ("M-H" . helm-end-of-buffer))
  :config (progn
	    (setq helm-buffers-fuzzy-matching t)
            (helm-mode 1)))


;; ALF
(setq org-log-done 'note)
(setq org-log-into-drawer t)
(setq org-treat-insert-todo-heading-as-state-change t)


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

(org-babel-do-load-languages
 'org-babel-load-languages
 ; load all language marked with (lang . t).
 '((C . t)
   (R . t)
  
   (awk)
   (calc)
   (clojure)
   (comint)
   (css)
   (ditaa . t)
   (dot . t)
   (emacs-lisp . t)
  
   (gnuplot . t)
   (haskell)
   (io)
   (java)
   (js)
   (latex)
   (ledger)
  
   (lisp)
  
   (maxima)
   (mscgen)
   (ocaml)
   (octave)
   (org . t)
   (perl)
   (picolisp)
   (plantuml)
   (python . t)
   (ref)
   (ruby . t)
  (php . t)
   (scala)
   (scheme)
  
   (shell . t)
   (shen)
   (sql)
   (sqlite)))

(setq org-babel-python-command "python3.7")
(setq org-babel-ruby-command "/home/alf/.rubies/ruby-2.6.1/bin/ruby")
;;(setq org-babel-ruby-command "/Users/alfredeichenseher/.rubies/ruby-2.6.1/bin/ruby")


;; Load async for source blocks
(require 'ob-async)

;; Agenda view
;; look in front 10 days
;; look back 3 days
;; start today 
;; (setq org-agenda-span 10
;;      org-agenda-start-on-weekday nil
;;      org-agenda-start-day "-3d")


;; Log clock out with note
(setq org-log-note-clock-out t)

;; Log reschedule and redeadline
(setq org-log-reschedule (quote time))
(setq org-log-redeadline (quote time))

;; log done state
(setq org-log-done (quote time))
;; columns view agenda
;;(setq org-columns-default-format "%20ITEM(Task) %1PRIORITY %TAGS(Tags) %6TODO %4EFFORT{:} %4CLOCKSUM")
(setq org-agenda-overriding-columns-format "%CATEGORY %50ITEM(Task) %1PRIORITY %TAGS(Tags) %6TODO %4EFFORT{:} %4CLOCKSUM")
(setq org-agenda-columns-add-appointments-to-effort-sum t)
(setq org-agenda-default-appointment-duration 60)
(set-face-attribute 'default nil :height 100)
(set-face-attribute 'org-column nil :height 100)
;;(set-face-attribute 'org-column-title nil :height 100)


;; https://github.com/alphapapa/helm-org-rifle
(use-package helm-org-rifle
  :ensure t
  :bind (("<f6>" . helm-org-rifle-agenda-files)
         ("C-x C-f" . helm-find-files)
         ("C-x f" . helm-recentf)
         ("C-SPC" . helm-dabbrev)
         ("M-y" . helm-show-kill-ring)
         ("C-x b" . helm-buffers-list))


  )

(use-package calfw
  :commands (cfw:open-calendar-buffer))

(use-package calfw-org
  :commands (cfw:open-org-calendar))



(defun sudired ()
  (interactive)
  (require 'tramp)
  (let ((dir (expand-file-name default-directory)))
    (if (string-match "^/sudo:" dir)
        (user-error "Already in sudo")
      (dired (concat "/sudo::" dir)))))
(define-key dired-mode-map "!" 'sudired)

;; (setq org-latex-caption-above nil)

;; (setq org-latex-pdf-process 
;;       '("xelatex -interaction nonstopmode %f"
;;         "xelatex -shell-escape -interaction nonstopmode  %f"
;;         "xelatex -shell-escape -interaction nonstopmode  %f"
;;      "xelatex -interaction nonstopmode %f"))


;; (add-to-list 'org-latex-classes
;;              '("ae-article"
;;                "\\documentclass{article}
;; \\usepackage[hidelinks]{hyperref}
;; \\usepackage{geometry}
;; \\pagenumbering{roman}
;; \\geometry{a4paper,left=2.5cm,top=2cm,right=2.5cm,bottom=2cm,marginparsep=7pt, marginparwidth=.6in}"
;;                ("\\section{%s}" . "\\section*{%s}")
;;                ("\\subsection{%s}" . "\\subsection*{%s}")
;;                ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
;;                ("\\paragraph{%s}" . "\\paragraph*{%s}")
;;                ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))


;; (add-to-list 'org-latex-classes
;;           '("koma-article"
;;              "\\documentclass{scrartcl}"
;;              ("\\section{%s}" . "\\section*{%s}")
;;              ("\\subsection{%s}" . "\\subsection*{%s}")
;;              ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
;;              ("\\paragraph{%s}" . "\\paragraph*{%s}")
;;              ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

;; (add-to-list 'org-latex-classes
;;              '("book"
;;                "\\documentclass{book}"
;;                ("\\part{%s}" . "\\part*{%s}")
;;                ("\\chapter{%s}" . "\\chapter*{%s}")
;;                ("\\section{%s}" . "\\section*{%s}")
;;                ("\\subsection{%s}" . "\\subsection*{%s}")
;;                ("\\subsubsection{%s}" . "\\subsubsection*{%s}"))
;;              )

;;Alf - Org-habit
(add-to-list 'org-modules 'org-habit)


;;ALF TESTS
;; get rid of vertical splitting all the time

;;crypt
(require 'epa-file)
(epa-file-enable)

(require 'org-crypt)
(org-crypt-use-before-save-magic)
(setq org-tags-exclude-from-inheritance (quote ("crypt")))
;; GPG key to use for encryption
;; Either the Key ID or set to nil to use symmetric encryption.
(setq org-crypt-key nil)



(setq split-height-threshold 120
      split-width-threshold 160)



