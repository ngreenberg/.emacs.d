;; eclim

(require 'eclim)
(add-hook 'java-mode-hook 'eclim-mode)

(require 'eclimd)

(setq eclim-executable "~/eclipse/java-neon/eclipse/eclim")
(setq eclimd-executable "~/eclipse/java-neon/eclipse/eclimd")
