;; flycheck

(global-flycheck-mode)

(setq-default flycheck-emacs-lisp-load-path 'inherit)

(with-eval-after-load 'flycheck
  (setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc)))


;; company

(add-hook 'after-init-hook 'global-company-mode)
(setq company-minimum-prefix-length 1)
(setq company-idle-delay 0)
(setq company-dabbrev-downcase nil)
