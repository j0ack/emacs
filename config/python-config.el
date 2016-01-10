;; My python config

;; 80 chars
(require 'whitespace)
(setq whitespace-line-column 80)
(setq whitespace-style '(face lines-tail))
(add-hook 'prog-mode-hook 'whitespace-mode)

;; python
(elpy-enable)

(provide 'python-config)
