;; Initialize package sources
(require 'package)

(setq package-archives '(("melpa" . "http://mirrors.cloud.tencent.com/elpa/melpa/")
                         ("org" . "http://mirrors.cloud.tencent.com/elpa/org/")
                         ("elpa" . "http://mirrors.cloud.tencent.com/elpa/gnu/")))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))


;; Initialize use-package on non-Linux platforms
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)


(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(rg logview ivy-prescient flycheck company-box dap-mode lsp-ivy lsp-treemacs lsp-ui lsp-mode auto-package-update iedit multiple-cursors expand-region beacon org-bullets undo-tree which-key use-package try ivy-rich helpful counsel ace-window)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))
(put 'narrow-to-region 'disabled nil)
