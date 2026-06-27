;;; programming.el --- Programming language configurations -*- lexical-binding: t; -*-

;; Clojure major mode with syntax highlighting, indentation, and
;; S-expression navigation.
(use-package clojure-mode
  :ensure t
  :mode (("\\.clj\\'" . clojure-mode)
         ("\\.cljs\\'" . clojurescript-mode)
         ("\\.cljc\\'" . clojurec-mode)
         ("\\.edn\\'" . clojure-mode))
  :config
  (setq clojure-align-forms-automatically t))

;; CIDER is the Clojure IDE for Emacs — it provides an interactive
;; REPL, code evaluation, debugging, and more.
(use-package cider
  :ensure t
  :commands (cider-jack-in cider-connect cider-connect-cljs)
  :hook
  ;; Auto-enable `cider-mode` when editing Clojure buffers with an
  ;; active REPL connection; use `clojure-mode` for standalone editing.
  (clojure-mode . cider-mode)
  :config
  (setq nrepl-log-messages nil            ; suppress nREPL noise
        cider-repl-display-help-banner nil ; minimal REPL banner
        cider-repl-pop-to-buffer-on-connect nil
        cider-show-error-buffer nil))
;;; programming.el ends here
