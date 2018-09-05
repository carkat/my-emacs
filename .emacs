(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)


(require 'evil)
(evil-mode 1)



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (wombat)))
 '(package-selected-packages (quote (evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;; change color theme to one dark custom theme. 
(add-to-list 'custom-theme-load-path "~/backup/atom-one-dark-theme")
(load-theme 'atom-one-dark t)

;;;;; set pretty symbols
(global-prettify-symbols-mode 1)

(defun my-add-pretty-lambda ()
  "make some word or string show as pretty Unicode symbols"
  (setq prettify-symbols-alist
        '(
          ("lambda" . 955) ; λ
          ("->" . 8594)    ; →
          ("=>" . 8658)    ; ⇒
          ("map" . 8614)   ; ↦
          )))

(add-hook 'clojure-mode-hook 'my-add-pretty-lambda)
(add-hook 'lisp-mode-hook 'my-add-pretty-lambda)
(add-hook 'python-mode-hook 'my-add-pretty-lambda)
(add-hook 'haskell-mode-hook 'my-add-pretty-lambda)
(add-hook 'shen-mode-hook 'my-add-pretty-lambda)
(add-hook 'tex-mode-hook 'my-add-pretty-lambda)

(global-linum-mode 1)
(setq linum-format "%4d \u2502 ")
(setq-default auto-fill-function 'do-auto-fill)
(setq fill-column 80)
