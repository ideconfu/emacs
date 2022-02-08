;;; init-local.el --- personal settings
;;; Code:

(defun open-my-init-file ()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(global-set-key (kbd "<f1>") 'open-my-init-file)

(provide 'init-local)
;;; init-local.el end here
