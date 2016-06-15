(provide 'yulu-faces-and-ui)

;; Group: faces-and-ui -> bars
;; Turn off bars to save screen space
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))


;;Group: faces-and-ui -> fonts
;; change font to Inconsolata for better looking text
;; remember to install the font Inconsolata first
(setq default-frame-alist '((font . "Inconsolata-11")))
;; set italic font for italic face, since Emacs does not set italic
;; face automatically
(set-face-attribute 'italic nil
                    :family "Inconsolata-Italic")


;;Group: faces-and-ui -> hightlight-symbols
;;If you move point on a symbol, it automatically highlights all the
;; symbols in the current screen. From now on, pressing M-n and M-p 
;;will immediately jump to the next/previous symbols in a buffer. 
(require 'highlight-symbol)

(highlight-symbol-nav-mode)

(add-hook 'prog-mode-hook (lambda () (highlight-symbol-mode)))
(add-hook 'org-mode-hook (lambda () (highlight-symbol-mode)))

(setq highlight-symbol-idle-delay 0.2
      highlight-symbol-on-navigation-p t)

(global-set-key [(control shift mouse-1)]
                (lambda (event)
                  (interactive "e")
                  (goto-char (posn-point (event-start event)))
                  (highlight-symbol-at-point)))

(global-set-key (kbd "M-n") 'highlight-symbol-next)
(global-set-key (kbd "M-p") 'highlight-symbol-prev)
