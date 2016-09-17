;; Add and enable MELPA
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/custom/")
(require 'yulu-editing)
(require 'yulu-convenience)
(require 'yulu-environment)
(require 'yulu-faces-and-ui)
(require 'yulu-python3)
(require 'yulu-latex)

