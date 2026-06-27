;; Uncomment the following if you are using undo-fu
;; (setq evil-undo-system 'undo-fu)

;; Evil provides Vim-style modal editing within Emacs, including normal, insert,
;; visual, and operator-pending states with full Vim keybinding support.
;;(use-package evil
;;  :commands (evil-mode evil-define-key)
;;  :hook (after-init . evil-mode)
;;
;;  :init
;;  ;; It has to be defined before evil
;;  (setq evil-want-integration t)
;;  (setq evil-want-keybinding nil)
;;
;;  :custom
;;  ;; Make :s in visual mode operate only on the actual visual selection
;;  ;; (character or block), instead of the full lines covered by the selection
;;  (evil-ex-visual-char-range t)
;;  ;; Use Vim-style regular expressions in search and substitute commands,
;;  ;; allowing features like \v (very magic), \zs, and \ze for precise matches
;;  (evil-ex-search-vim-style-regexp t)
;;  ;; Enable automatic horizontal split below
;;  (evil-split-window-below t)
;;  ;; Enable automatic vertical split to the right
;;  (evil-vsplit-window-right t)
;;  ;; Disable echoing Evil state to avoid replacing eldoc
;;  (evil-echo-state nil)
;;  ;; Do not move cursor back when exiting insert state
;;  (evil-move-cursor-back nil)
;;  ;; Make `v$` exclude the final newline
;;  (evil-v$-excludes-newline t)
;;  ;; Allow C-h to delete in insert state
;;  (evil-want-C-h-delete t)
;;  ;; Enable C-u to delete back to indentation in insert state
;;  (evil-want-C-u-delete t)
;;  ;; Enable fine-grained undo behavior
;;  (evil-want-fine-undo t)
;;  ;; Disable wrapping of search around buffer
;;  (evil-search-wrap nil)
;;  ;; Whether Y yanks to the end of the line
;;  (evil-want-Y-yank-to-eol t))

;; evil-collection provides a curated set of Evil keybindings for many Emacs
;; modes and packages that Evil does not cover by default.
;;(use-package evil-collection
;;  :after evil
;;  :init
;;  ;; It has to be defined before evil-collection
;;  (setq evil-collection-setup-minibuffer t)
;;  :config
;;  (evil-collection-init))

;; The goto-chg package is useful with Evil to jump directly to the most recent
;; edit location. This mirrors Vim's change navigation, allowing fast return to
;; where text was last modified without relying on the jump list or search.
;;
;; The goto-chg commands are bound to g; and g,
;;(use-package goto-chg
;;  :commands (goto-last-change
;;             goto-last-change-reverse))
