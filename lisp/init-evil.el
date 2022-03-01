;;; init-evil.el --- Completion with evil -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require 'evil-surround)

(evil-mode 1)
(global-evil-leader-mode)
(global-evil-surround-mode 1)

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
  "x3" 'split-window-horizontally
  "xz" 'suspend-frame
  "xs" 'save-buffer
  "cl" 'evilnc-comment-or-uncomment-lines
  "ll" 'evilnc-comment-or-uncomment-to-the-line
  "cc" 'evilnc-copy-and-comment-lines
  "cp" 'evilnc-comment-or-uncomment-paragraphs
  "cr" 'comment-or-uncomment-region
  "so" 'occur-dwim
  "si" 'counsel-imenu
  "aa" 'copy-to-x-clipboard
  "pp" 'paste-from-x-clipboard
  )

;;set keybindings
(define-key evil-visual-state-map (kbd "v") 'er/expand-region)
(with-eval-after-load 'evil
  (setq expand-region-contract-fast-key "z"))

(provide 'init-evil)
;;; init-evil.el ends here
