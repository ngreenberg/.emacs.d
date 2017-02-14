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

(require 'avy)
(avy-setup-default)
(setq avy-keys '(?a ?s ?d ?f ?j ?k ?l ;; home row keys
                    ?w ?e ?r ?u ?i ?o ?g ?h ?x ?c ?v ?m ;; easy moves
                    ?t ?n ?z ?p ;; harder moves
                    ))

;; use the beginning avy-keys for chords
(defun avy-tree (lst keys)
  "Coerce LST into a balanced tree.
The degree of the tree is the length of KEYS.
KEYS are placed appropriately on internal nodes."
  (let ((len (length keys)))
    (cl-labels
        ((rd (ls)
           (let ((ln (length ls)))
             (if (< ln len)
                 (nreverse
                  (cl-pairlis keys
                              (mapcar (lambda (x) (cons 'leaf x)) ls)))
               (let ((ks (nreverse (copy-sequence keys)))
                     res)
                 (dolist (s (avy-subdiv ln len))
                   (push (cons (pop ks)
                               (if (eq s 1)
                                   (cons 'leaf (pop ls))
                                 (rd (avy-multipop ls s))))
                         res))
                 (nreverse res))))))
      (rd lst))))

(setq avy-timeout-seconds .3)
(global-set-key (kbd "C-'") 'avy-goto-char-timer)
(global-set-key (kbd "M-g M-g") 'avy-goto-line)
