(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(require 'bar-cursor)
(bar-cursor-mode 1)

(setq inferior-lisp-program "sbcl")
(setq slime-contribs '(slime-fancy))

(require 'evil)
(evil-mode 1)



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode t)
 '(custom-enabled-themes (quote (atom-one-dark)))
 '(custom-safe-themes
   (quote
    ("adf5275cc3264f0a938d97ded007c82913906fc6cd64458eaae6853f6be287ce" "57f95012730e3a03ebddb7f2925861ade87f53d5bbb255398357731a7b1ac0e0" default)))
 '(package-selected-packages
   (quote
    (occidental-theme eink-theme silkworm-theme goose-theme plan9-theme oldlace-theme material-theme ## slime neotree python-mode paredit atom-dark-theme atom-one-dark-theme evil)))
 '(scheme-program-name "petite")
 '(show-paren-mode t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;; change color theme to one dark custom theme. 
;;; (add-to-list 'custom-theme-load-path "~/backup/atom-one-dark-theme")
;;; (load-theme 'atom-one-dark t)

;;;;; set pretty symbols
(global-prettify-symbols-mode 1)

(defun my-add-pretty-lambda ()
  "make some word or string show as pretty Unicode symbols"
  (setq prettify-symbols-alist
        '(("lambda"	.	955) ; λ
          ("->"		.	8594)    ; →
          ("=>"		.	8658)    ; ⇒
          ("map"	.	8614)   ; ↦
          ("/"		.	0247)
          ("*"		.	0215)
          ("for"	.	8704)
          ("not "	.	0172)
          ("print"	.	0182)
          ("="		.	8592)
          ("or"		.	8744)
          ("and"	.	8743)
	  ("range"	.	0953)
	  ("len"	.	35)
          ("return"	.	8594) 
          ("self"	.	9792) 
          ("self"	.	9792) 
          ("!="		.	8800)
          ("=="		.	"=")
	  ("if"		.	"⍋")
	  ("elif"	.	"⍒")
	  ("else"	.	"∇")
	  ("None"	.	"⍬")
          ("in"		.	"∊")
	  ("not in"	.	"∉")
	  (">="		.	"≥")
	  ("<="		.	"≤")
          ("True"	.	"T") 
          ("False"	.	"F"))))

(defun my-scheme-pretty ()
  "make some word or string show as pretty Unicode symbols"
  (setq prettify-symbols-alist
    '(("lambda"	.	955))))

(add-hook 'scheme-mode-hook 'my-scheme-pretty)
(add-hook 'lisp-mode-hook 'my-scheme-pretty)

(add-hook 'clojure-mode-hook 'my-add-pretty-lambda)
(add-hook 'python-mode-hook 'my-add-pretty-lambda)
(add-hook 'haskell-mode-hook 'my-add-pretty-lambda)
(add-hook 'shen-mode-hook 'my-add-pretty-lambda)
(add-hook 'tex-mode-hook 'my-add-pretty-lambda)

;(global-linum-mode 1)
;(setq linum-format "%4d \u2502 ")
;(setq-default auto-fill-function 'do-auto-fill)
;(setq fill-column 80)

(global-set-key (kbd "C-c j") 'ace-jump-char-mode)


(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

(global-set-key (kbd "M-a") 'align-entire)
(global-set-key (kbd "M-r") 'align-regexp)

(evil-define-key 'normal neotree-mode-map (kbd "TAB") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "SPC")
  'neotree-quick-look)
(evil-define-key 'normal neotree-mode-map (kbd "q") 'neotree-hide)
(evil-define-key 'normal neotree-mode-map (kbd "RET") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "g") 'neotree-refresh)
(evil-define-key 'normal neotree-mode-map (kbd "n")
  'neotree-next-line)
(evil-define-key 'normal neotree-mode-map (kbd "p")
  'neotree-previous-line)
(evil-define-key 'normal neotree-mode-map (kbd "A")
  'neotree-stretch-toggle)
(evil-define-key 'normal neotree-mode-map (kbd "H") 'neotree-hidden-file-toggle)

(add-hook 'python-mode-hook
	  (function (lambda ()
		      (setq indent-tabs-mode nil
			    tab-width 4))))

(setq split-height-threshold nil)
(setq split-width-threshold 0)
(setq-default py-split-windows-on-execute-function 'split-window-horizontally)
(autoload 'scheme-mode "cmuscheme" "Major mode for Scheme." t)
(autoload 'run-scheme "cmuscheme" "Switch to interactive Scheme buffer." t)
(setq auto-mode-alist (cons '("\\.ss" . scheme-mode) auto-mode-alist))


;;;(setq scheme-program-name "petite")
(add-to-list 'load-path "~/git/gnu-apl-mode-master/gnu-apl-mode-master")
(require 'gnu-apl-mode)
