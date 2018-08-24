(require 'package) ;; You might already have this line
(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
        ("gnu" . "https://elpa.gnu.org/packages/")
        ("org" . "http://orgmode.org/elpa/")))
(package-initialize) ;; You might already have this line

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (suscolors)))
 '(custom-safe-themes
   (quote
    ("97d039a52cfb190f4fd677f02f7d03cf7dbd353e08ac8a0cb991223b135ac4e6" default)))
 '(inhibit-startup-screen t)
 '(org-agenda-files
   (quote
<<<<<<< HEAD
    ("/Users/alfredeichenseher/org/cloud/2018_prj.org" "/Users/alfredeichenseher/org/cloud/alfredbiz.org" "/Users/alfredeichenseher/org/cloud/alpha.org" "/Users/alfredeichenseher/org/cloud/audioghost.org" "/Users/alfredeichenseher/org/cloud/beta.org" "/Users/alfredeichenseher/org/cloud/blender.org" "/Users/alfredeichenseher/org/cloud/boltcms.org" "/Users/alfredeichenseher/org/cloud/buchhaltung.org" "/Users/alfredeichenseher/org/cloud/capture.org" "/Users/alfredeichenseher/org/cloud/contao4.org" "/Users/alfredeichenseher/org/cloud/drupal.org" "/Users/alfredeichenseher/org/cloud/einkauf.org" "/Users/alfredeichenseher/org/cloud/godot.org" "/Users/alfredeichenseher/org/cloud/linux.org" "/Users/alfredeichenseher/org/cloud/macbook.org" "/Users/alfredeichenseher/org/cloud/mpu.org" "/Users/alfredeichenseher/org/cloud/nas_2018.org" "/Users/alfredeichenseher/org/cloud/notes.org" "/Users/alfredeichenseher/org/cloud/org.org" "/Users/alfredeichenseher/org/cloud/privat.org" "/Users/alfredeichenseher/org/cloud/projects.org" "/Users/alfredeichenseher/org/cloud/simpleaccounts.org" "/Users/alfredeichenseher/org/cloud/timwedding.org" "/Users/alfredeichenseher/org/cloud/todo.org" "/Users/alfredeichenseher/org/cloud/web_diebergedeswahnsinns.de.org" "/Users/alfredeichenseher/org/cloud/web_westernbiological.org" "/Users/alfredeichenseher/org/cloud/webdev.org" "/Users/alfredeichenseher/org/cloud/tax/_taxes.org" "/Users/alfredeichenseher/org/cloud/clients/decrignis.org" "/Users/alfredeichenseher/org/cloud/clients/gluecklich.org" "/Users/alfredeichenseher/org/cloud/clients/hbh.org" "/Users/alfredeichenseher/org/cloud/clients/maxkeller.org" "/Users/alfredeichenseher/org/cloud/clients/nuwave.org" "/Users/alfredeichenseher/org/cloud/clients/pamir.org" "/Users/alfredeichenseher/org/cloud/clients/rookman.org" "/Users/alfredeichenseher/org/cloud/clients/ursberg.org" "/Users/alfredeichenseher/org/cloud/clients/wup.org" "/Users/alfredeichenseher/org/cloud/clients/Ontraq/migration.org" "/Users/alfredeichenseher/org/cloud/clients/Ontraq/ontraq.org" "/Users/alfredeichenseher/org/cloud/clients/Ontraq/ontraq_conflict-20180503-172914.org" "/Users/alfredeichenseher/org/cloud/clients/Ontraq/ontraqbackup.org" "/Users/alfredeichenseher/org/cloud/clients/RafaelBernardo/headachehurts.org" "/Users/alfredeichenseher/org/cloud/clients/RafaelBernardo/leezafive.org" "/Users/alfredeichenseher/org/cloud/clients/Tillus/tillus.org" "/Users/alfredeichenseher/org/cloud/business/strategy.org" "/Users/alfredeichenseher/org/cloud/misc/birthdays.org" "/Users/alfredeichenseher/org/cloud/misc/habits.org")))
 '(org-agenda-show-all-dates t)
 '(org-agenda-start-on-weekday nil)
=======
    ("/home/alf/org/cloud/2018_prj.org" "/home/alf/org/cloud/alfredbiz.org" "/home/alf/org/cloud/alpha.org" "/home/alf/org/cloud/audioghost.org" "/home/alf/org/cloud/beta.org" "/home/alf/org/cloud/blender.org" "/home/alf/org/cloud/boltcms.org" "/home/alf/org/cloud/buchhaltung.org" "/home/alf/org/cloud/capture.org" "/home/alf/org/cloud/contao4.org" "/home/alf/org/cloud/drupal.org" "/home/alf/org/cloud/einkauf.org" "/home/alf/org/cloud/godot.org" "/home/alf/org/cloud/linux.org" "/home/alf/org/cloud/macbook.org" "/home/alf/org/cloud/mpu.org" "/home/alf/org/cloud/nas_2018.org" "/home/alf/org/cloud/notes.org" "/home/alf/org/cloud/org.org" "/home/alf/org/cloud/privat.org" "/home/alf/org/cloud/projects.org" "/home/alf/org/cloud/simpleaccounts.org" "/home/alf/org/cloud/timwedding.org" "/home/alf/org/cloud/todo.org" "/home/alf/org/cloud/web_diebergedeswahnsinns.de.org" "/home/alf/org/cloud/web_westernbiological.org" "/home/alf/org/cloud/webdev.org" "/home/alf/org/cloud/tax/_taxes.org" "/home/alf/org/cloud/clients/decrignis.org" "/home/alf/org/cloud/clients/gluecklich.org" "/home/alf/org/cloud/clients/hbh.org" "/home/alf/org/cloud/clients/maxkeller.org" "/home/alf/org/cloud/clients/nuwave.org" "/home/alf/org/cloud/clients/pamir.org" "/home/alf/org/cloud/clients/rookman.org" "/home/alf/org/cloud/clients/ursberg.org" "/home/alf/org/cloud/clients/wup.org" "/home/alf/org/cloud/clients/Ontraq/migration.org" "/home/alf/org/cloud/clients/Ontraq/ontraq.org" "/home/alf/org/cloud/clients/Ontraq/ontraqbackup.org" "/home/alf/org/cloud/clients/RafaelBernardo/headachehurts.org" "/home/alf/org/cloud/clients/RafaelBernardo/leezafive.org" "/home/alf/org/cloud/clients/Tillus/tillus.org" "/home/alf/org/cloud/misc/birthdays.org" "/home/alf/org/cloud/misc/habits.org" "/mnt/octopus/syncthing/org/mobileorg.org")))
 '(org-agenda-show-all-dates t)
 '(org-agenda-start-on-weekday 1)
>>>>>>> 19a102c0ff1232aec0505275d768df0c82c85080
 '(org-deadline-warning-days 14)
 '(org-support-shift-select t)
 '(rainbow-html-colors t)
 '(rainbow-html-colors-major-mode-list (quote (org-mode css-mode php-mode nxml-mode xml-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-level-6 ((t (:inherit outline-6 :foreground "tomato")))))



 

 
(add-to-list 'load-path "~/.emacs.d/lisp/")
;;(require 'ox-confluence)



(when (display-graphic-p)
  (load-theme 'suscolors t)
  )

(unless (require 'use-package nil t)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package diminish
  :ensure t)


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

(progn
            (define-key eyebrowse-mode-map (kbd "M-1") 'eyebrowse-switch-to-window-config-1)
            (define-key eyebrowse-mode-map (kbd "M-2") 'eyebrowse-switch-to-window-config-2)
            (define-key eyebrowse-mode-map (kbd "M-3") 'eyebrowse-switch-to-window-config-3)
            (define-key eyebrowse-mode-map (kbd "M-4") 'eyebrowse-switch-to-window-config-4)
            (define-key eyebrowse-mode-map (kbd "M-5") 'eyebrowse-switch-to-window-config-5)
            (define-key eyebrowse-mode-map (kbd "M-6") 'eyebrowse-switch-to-window-config-6)
            (define-key eyebrowse-mode-map (kbd "M-7") 'eyebrowse-switch-to-window-config-7)
            (define-key eyebrowse-mode-map (kbd "M-8") 'eyebrowse-switch-to-window-config-8)

            (eyebrowse-mode t)
            (setq eyebrowse-new-workspace t))


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

;; ALFIS ORG MODE STUFF:
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

(setq org-agenda-files '("~/org/cloud"
                         "~/org/cloud/tax"
                         "~/org/cloud/clients"
                         "~/org/cloud/clients/Ontraq"
                         "~/org/cloud/clients/RafaelBernardo"
                         "~/org/cloud/clients/Tillus"
                         "~/org/cloud/clients/Ursberg"                       
                         "~/org/cloud/misc"
                         "/mnt/octopus/syncthing/org"
                         ))

(setq org-default-notes-file '("~/org/cloud/capture.org"))

(setq org-todo-keywords
      '((sequence "TODO(t)" "NEXT(n)" "WAITING(w@/!)" "PROJECT(p)" "|" "DONE(d!)" "CANCELLED(c@/!)")))

(setq org-todo-state-tags-triggers
      (quote (("CANCELLED" ("CANCELLED" . t))
              ("PROJECT" ("WAITING") ("CANCELLED") ("PRJ") ("NEXT") ("PRJ" . t) )
              ("WAITING" ("NEXT")("PRJ")("WAITING" . t))
              ("NEXT" ("WAITING")("PRJ")("NEXT" . t))
              (done ("WAITING") ("NEXT") ("PRJ"))
              ("TODO" ("WAITING") ("CANCELLED") ("PRJ") ("NEXT") )
              ("NEXT" ("WAITING") ("CANCELLED") ("PRJ") )
              ("DONE" ("WAITING") ("CANCELLED") ("PRJ") ("NEXT")))))


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
(global-set-key (kbd "<f8>") 'org-cycle-agenda-files)
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


;; ALF 
(defun alf-org-clock-in()
    (interactive)
(org-clock-goto 2))

(setq org-clock-history-length 23)

(setq org-duration-format (quote h:mm))
(setq org-time-clocksum-format (quote (:hours "%d" :require-hours t :minutes ":%02d" :require-minutes t)))


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

(add-hook 'org-clock-out-hook 'bh/remove-empty-drawer-on-clock-out 'append)




;; I use C-c c to start capture mode
(global-set-key (kbd "C-c c") 'org-capture)

;; Capture templates for: TODO tasks, Notes, appointments, phone calls, meetings, and org-protocol
(setq org-capture-templates
      (quote (("t" "todo" entry (file "~/org/cloud/todo.org")
               "* TODO %?\n%U\n%a\n")
              ("i" "INTERRUPT" entry (file "~/org/cloud/todo.org")
               "* TODO %?\n%U\n%a\n" :clock-in t :clock-resume t)
              ("s" "Scheduled todo" entry (file "~/org/cloud/todo.org")
               "* TODO %?\n%U\n%a\nSCHEDULED: %t\n\n")
              ("r" "respond" entry (file "~/org/cloud/todo.org")
               "* NEXT Respond to %:from on %:subject\nSCHEDULED: %t\n%U\n%a\n" :clock-in t :clock-resume t :immediate-finish t)
              ("n" "note" entry (file "~/org/cloud/todo.org")
               "* %? :NOTE:\n%U\n%a\n" :clock-in t :clock-resume t)
              ("j" "Journal" entry (file+datetree "~/git/org/diary.org")
               "* %?\n%U\n" :clock-in t :clock-resume t)
              ("w" "org-protocol" entry (file "~/org/cloud/todo.org")
               "* TODO Review %c\n%U\n" :immediate-finish t)
              ("m" "Meeting" entry (file "~/org/cloud/todo.org")
               "* MEETING with %? :MEETING:\n%U" :clock-in t :clock-resume t)
              ("p" "Phone call" entry (file "~/org/cloud/todo.org")
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
(setq ido-everywhere t)
(setq ido-max-directory-size 100000)
(ido-mode (quote both))
; Use the current window when visiting files and buffers with ido
(setq ido-default-file-method 'selected-window)
(setq ido-default-buffer-method 'selected-window)
; Use the current window for indirect buffer display
(setq org-indirect-buffer-display 'current-window)
; ALF log time when closed
(setq org-log-done 'time)

;;; Alf cua Mode:
(cua-mode t)

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

              ("pa" "Active Projects" tags-todo "TODO=\"PROJECT\"")
               ("pn" "Next steps" tags-todo "PRJ&NEXT|TODO=\"PROJECT\"")
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

(setq org-agenda-start-day "-1d") ;; start agenda view yesterday
(setq org-agenda-ndays 15) ;; show me 15 days
(setq org-log-done 'time)
;;(setq org-agenda-skip-scheduled-if-done t
;;      org-agenda-skip-deadline-if-done  t)

(fset 'addScheduledTodo
      [M-return S-right return ?\C-c ?\C-s return ?\C-u ?\C-c ?! return up up end ? ])      


(global-set-key (kbd "<f5>") 'addScheduledTodo) ; Alt+a
(global-set-key (kbd "C-c r") 'org-refile) ; Alt+a


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

;; ALF Miscs:
(display-time-mode 1)


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
(setq org-log-into-drawer t)
