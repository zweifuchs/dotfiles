;; -*- no-byte-compile: t; -*-
;;; ui/workspaces/packages.el

(package! persp-mode
  :recipe (:host github
           :repo "hlissner/persp-mode.el"
           :branch "remove-byte-compile")
  :pin "14325c11f7a347717d7c3780f29b24a38c68fbfc")
