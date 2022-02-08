;;; init-local.el --- personal settings
;;; Code:

(defun open-my-init-file ()
  (interactive)
  (find-file "~/.emacs.d/lisp/init-local.el"))

(global-set-key (kbd "<f1>") 'open-my-init-file)

(setq-default cursor-type 'bar)

(load-theme 'monokai t)

(provide 'init-local)
;;; init-local.el end here
