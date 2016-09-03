(provide 'yulu-editing)

;; Group: Editing -> basics
(setq global-mark-ring-max 1000       ;;Mark ring entries
      mark-ring-max 1000              ;;Kill ring entries
      mode-require-final-newline t    ;;add a newline to end of file
)


(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-language-environment "UTF-8")
(prefer-coding-system 'utf-8)

;; Group: Editing -> move
;; C-a move to the 1st non-wihitepace position 
(defun prelude-move-beginning-of-line (arg)
  "Move point back to indentation of beginning of line.

Move point to the first non-whitespace character on this line.
If point is already there, move to the beginning of the line.
Effectively toggle between the first non-whitespace character and
the beginning of the line.

If ARG is not nil or 1, move forward ARG - 1 lines first. If
point reaches the beginning or end of the buffer, stop there."

  (interactive "^p")
  (setq arg (or arg 1))
  (when (/= arg 1)
    (let ((line-move-visual nil))
      (forward-line (1- arg)))
    )
  (let ((orig-point (point)))
    (back-to-indentation)
    (when (= orig-point (point))
      (move-beginning-of-line 1))
    )
)

(global-set-key (kbd "C-a") 'prelude-move-beginning-of-line)

;; Group: Editing -> yank
;;When yank sth, the yanked regin will be highlighted
(require 'volatile-highlights)
(volatile-highlights-mode t)

;; Group: Editing -> undo-tree
;;Undo tree, C-x u to see the tree 
(require 'undo-tree)
(global-undo-tree-mode)

;; Group: Editing -> Flyspell
;;(if (executable-find "aspell")
;;    (progn
;;      (setq ispell-program-name "aspell")
;;      (setq ispell-extra-args '("--sug-mode=ultra")))
;;  (setq ispell-program-name "ispell"))

;;(add-hook 'text-mode-hook 'flyspell-mode)
;;(add-hook 'org-mode-hook 'flyspell-mode)
;;(add-hook 'prog-mode-hook 'flyspell-prog-mode)


;;Group: Editing -> Flycheck
;;(require 'flycheck)
;;(add-hook 'after-init-hook #'global-flycheck-mode)
