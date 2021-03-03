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


(org-babel-load-file (expand-file-name "~/.emacs.d/emacs.org"))
