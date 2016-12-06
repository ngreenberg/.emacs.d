(load-theme 'solarized-dark t)

(defun toggle-solarized-theme ()
  (interactive)
  (if (equal custom-enabled-themes '(solarized-dark))
      (progn
	(set-frame-parameter (selected-frame) 'alpha '(100 100))
	(disable-theme 'solarized-dark)
	(load-theme 'solarized-light t))
    (progn
      (set-frame-parameter (selected-frame) 'alpha '(93 93))
      (disable-theme 'solarized-light)
      (load-theme 'solarized-dark t))))
(global-set-key (kbd "C-c d") 'toggle-solarized-theme)
