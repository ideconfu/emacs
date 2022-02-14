;;; init-local.el --- personal settings
;;; Code:

(defun open-my-init-file ()
  (interactive)
  (find-file "~/.emacs.d/lisp/init-local.el"))

(global-set-key (kbd "<f1>") 'open-my-init-file)

(setq-default cursor-type 'bar)

(load-theme 'monokai t)

;;; config hungry-delete
(require 'hungry-delete)
(global-hungry-delete-mode)
;;; (define-key hungry-delete-mode-map (kbd "DEL") 'hungry-delete-backward)
(global-set-key (kbd "C-c C-b") 'hungry-delete-backward)
(global-set-key (kbd "C-c C-f") 'hungry-delete-forward)

;;; config swiper
(ivy-mode)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)
(global-set-key (kbd "C-h o") 'counsel-describe-symbol)
(global-set-key (kbd "C-c C-g") 'counsel-git)
(global-set-key (kbd "C-c C-j") 'counsel-git-grep)

;; config indent-buffer
(defun indent-buffer ()
  "Indent the currently visited buffer."
  (interactive)
  (indent-region (point-min) (point-max)))

(defun indent-region-or-buffer ()
  "Indent a region if selected, otherwise the whole buffer."
  (interactive)
  (save-excursion
    (if (region-active-p)
        (progn
          (indent-region (region-beginning) (region-end))
          (message "Indent selected region."))
      (progn
        (indent-buffer)
        (message "Indent buffer.")))))

(global-set-key (kbd "C-c C-\\") 'indent-region-or-buffer)

;; config occur-mode
(defun occur-dwim ()
  "Call 'occur' with a sane default."
  (interactive)
  (push (if (region-active-p)
            (buffer-substring-no-properties
             (region-beginning)
             (region-end))
          (let ((sym (thing-at-point 'symbol)))
            (when (stringp sym)
              (regexp-quote sym))))
        regexp-history)
  (call-interactively 'occur)
  ;;(switch-to-buffer-other-window "*Occur*")
  )

(global-set-key (kbd "M-s o") 'occur-dwim)

;; config counsel-imenu
(global-set-key (kbd "M-s i") 'counsel-imenu)

;; config expand region
(global-set-key (kbd "C-c m") 'er/expand-region)

;; config popwin
(require 'popwin)
(popwin-mode 1)

(provide 'init-local)
;;; init-local.el end here
