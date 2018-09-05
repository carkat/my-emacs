;; Swap line numbers using C-<f5>, you can change this of course
(autoload 'linum-mode "linum" "toggle line numbers on/off" t) 
(global-set-key (kbd "C-<f5>") 'linum-mode)  

(setq-default fill-column 80)


;; Show all line numbering by default (you can turn this off if you would like)
(line-number-mode 1)
(linum-mode 1)
