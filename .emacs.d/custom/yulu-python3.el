(provide 'yulu-python3)

(setq
    py-python-command "/usr/bin/python3"
    python-shell-interpreter "/usr/bin/ipython3"
    python-indent-offset 4
    )

(require 'auto-complete)
(global-auto-complete-mode t)

(linum-mode)
(setq linum-format "%2d \u2502 ")
(setq column-number-mode t)
(global-linum-mode t)
(setenv "IPY_TEST_SIMPLE_PROMPT" "1") ;; fix ipython3 prompt error

;; (highlight-indentation-mode nil)

;;(elpy-enable)
