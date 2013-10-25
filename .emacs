(require 'package)
(add-to-list 'package-archives
         '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))
(defvar my-packages 
 '(
 ;; add some better defaults and little niceities
 starter-kit starter-kit-lisp starter-kit-bindings starter-kit-eshell

 ;; clojure development stuff
 clojure-mode clojurescript-mode nrepl
 
 ;; my favorite theme
 zenburn-theme 
 
 ;; window number instead of hitting ctrl-x-o all the time
 window-number
 
 ;; run powershell as an inferior shell in emacs
 powershell
 ))
 
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))
	

	(load-theme 'zenburn t)
	

	(autoload 'window-number-mode "window-number"
   "A global minor mode that enables selection of windows according to
 numbers with the C-x C-j prefix.  Another mode,
 `window-number-meta-mode' enables the use of the M- prefix."
   t)

 (autoload 'window-number-meta-mode "window-number"
   "A global minor mode that enables use of the M- prefix to select
 windows, use `window-number-mode' to display the window numbers in
 the mode-line."
   t)
(window-number-mode 1)
(window-number-meta-mode 1)

(defun eshell/clear ()
  "04Dec2001 - sailor, to clear the eshell buffer."
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)))


 ;; fix that ugly font
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(speedbar-show-unknown-files t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Consolas" :foundry "outline" :slant normal :weight normal :height 98 :width normal)))))
