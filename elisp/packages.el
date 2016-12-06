(package-initialize)

; list the packages you want
(custom-set-variables
 '(package-selected-packages
   (quote
    (solarized-theme
     smex ido-ubiquitous direx smartparens undo-tree expand-region
     exec-path-from-shell
     flycheck company
     magit
     elpy py-autopep8
     web-mode
     auctex
     eclim))))

; list the repositories containing them
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

; install the packages
(package-install-selected-packages)

; activate all the packages (in particular autoloads)
(package-initialize)
