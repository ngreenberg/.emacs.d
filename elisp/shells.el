;; eshell

(defun shortened-path (path max-len)
  "Return a modified version of `path', replacing some components
      with single characters starting from the left to try and get
      the path down to `max-len'"
  (let* ((components (split-string (abbreviate-file-name path) "/"))
	 (len (+ (1- (length components))
		 (cl-reduce '+ components :key 'length)))
	 (str ""))
    (while (and (> len max-len)
		(cdr components))
      (setq str (concat str (if (= 0 (length (car components)))
				"/"
			      (string (elt (car components) 0) ?/)))
	    len (- len (1- (length (car components))))
	    components (cdr components)))
    (concat str (cl-reduce (lambda (a b) (concat a "/" b)) components))))

(defun rjs-eshell-prompt-function ()
  (concat (shortened-path (eshell/pwd) 40)
	  (if (= (user-uid) 0) " # " " $ ")))

(setq eshell-prompt-function 'rjs-eshell-prompt-function)
