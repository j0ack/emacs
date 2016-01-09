;; My python config

;; 80 chars
(require 'whitespace)
(setq whitespace-line-column 80)
(setq whitespace-style '(face lines-tail))
(add-hook 'prog-mode-hook 'whitespace-mode)

;; python
(require 'python-mode)
(require 'python-pep8)
(require 'python-pylint)
(require 'flymake-cursor)
(require 'company)
(require 'pyenv-mode)
(eval-after-load "company"
  '(progn
     (add-to-list 'company-backends 'company-anaconda)))

(add-to-list 'auto-mode-alist '("\.py\'" . python-mode))
(add-hook 'python-mode-hook 'global-company-mode)
(add-hook 'python-mode-hook 'anaconda-mode)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(add-hook 'find-file-hook 'flymake-find-file-hook)

(when (load "flymake" t)
  (defun flymake-pyflakes-init ()
    (let* ((temp-file (flymake-init-create-temp-buffer-copy
		       'flymake-create-temp-inplace))
	   (local-file (file-relative-name
			temp-file
			(file-name-directory buffer-file-name))))
      (list "pycheckers"  (list local-file))))
  (add-to-list 'flymake-allowed-file-name-masks
	       '("\\.py\\'" flymake-pyflakes-init)))
(load-library "flymake-cursor")

(global-set-key (kbd "M-p") 'flymake-goto-prev-error)
(global-set-key (kbd "M-n") 'flymake-goto-next-error)

(provide 'python-config)
