;;; init-evil.el --- Completion with evil -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(evil-mode 1)
(global-evil-leader-mode)

;; use ‘SPC’ as leader key
(evil-leader/set-leader "<SPC>")

;; set leader/keybindings
(evil-leader/set-key
  "xf" 'counsel-find-file
  "xb" 'ivy-switch-buffer
  "xk" 'kill-buffer
  "ss" 'swiper
  "xj" 'dired-jump
  "0"  'select-window-0
  "1"  'select-window-1
  "2"  'select-window-2
  "3"  'select-window-3
  "4"  'select-window-4
  "5"  'select-window-5
  "xe" 'sanityinc/eval-last-sexp-or-region
  "x1" 'sanityinc/toggle-delete-other-windows
  "x2" 'split-window-vertically
  "x3" 'split-window-horizontally)

(provide 'init-evil)
;;; init-evil.el ends here
