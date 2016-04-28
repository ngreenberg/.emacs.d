(require 'ido-ubiquitous)
(ido-ubiquitous-mode 1)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(require 'direx)
(global-set-key (kbd "C-x C-j") 'direx:jump-to-directory)

(require 'smartparens-config)
(smartparens-global-mode 1)

(add-hook 'smartparens-enabled-hook 'sp-use-smartparens-bindings)
(sp-pair "(" ")" :wrap "C-(")

(setq sp-show-pair-delay 0)
(show-smartparens-global-mode t)
