(global-flycheck-mode)

(add-hook 'after-init-hook 'global-company-mode)
(setq company-minimum-prefix-length 1)
(setq company-idle-delay 0)
(setq company-dabbrev-downcase nil)
