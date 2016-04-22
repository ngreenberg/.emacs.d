(defun fullscreen ()
  (interactive)
  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
			 '(2 "_NET_WM_STATE_FULLSCREEN" 0)))
(when (display-graphic-p) (fullscreen))

;; set transparency
(set-frame-parameter (selected-frame) 'alpha '(93 93))

;; set font-size
(set-face-attribute 'default (selected-frame) :height 90)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(column-number-mode 1)

(display-time-mode 1)

;; line numbers
(add-hook 'prog-mode-hook 'linum-mode)
(add-hook 'text-mode-hook 'linum-mode)
(unless (display-graphic-p) (setq linum-format "%d "))
