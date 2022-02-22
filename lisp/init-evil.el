;;; init-evil.el --- Completion with evil -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(evil-mode 1)
(global-evil-leader-mode)

;; use ‘SPC’ as leader key
(evil-leader/set-leader "<SPC>")

(evil-leader/set-key
  "xf" 'counsel-find-file
  "xb" 'ivy-switch-buffer
  "xk" 'kill-buffer
  "ss" 'swiper)

(provide 'init-evil)
;;; init-evil.el ends here
