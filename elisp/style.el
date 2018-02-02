(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(column-number-mode 1)

(display-time-mode 1)

;; line numbers
(add-hook 'prog-mode-hook 'linum-mode)
(add-hook 'text-mode-hook 'linum-mode)
(unless (display-graphic-p) (setq linum-format "%d "))
