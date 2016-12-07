(require 'ido-ubiquitous)
(ido-ubiquitous-mode 1)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "<menu>") 'smex)
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

(exec-path-from-shell-initialize)

(global-undo-tree-mode 1)

(global-set-key (kbd "C-=") 'er/expand-region)

(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
