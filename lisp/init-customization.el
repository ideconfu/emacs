;;; init-customization.el --- Completion with customize function -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(defun my-swiper-hack (&optional arg)
  "Undo region selection before swiper.  ARG is ingored."
  (ignore arg)
  (if (region-active-p) (deactivate-mark)))
(advice-add 'swiper :before #'my-swiper-hack)

(defun my-swiper (&optional other-source)
  "Search current file.
If OTHER-SOURCE is 1, get keyword from clipboard.
If OTHER-SOURCE is 2, get keyword from `kill-ring'."
  (interactive "P")
  (let* ((keyword (cond
                   ((eq 1 other-source)
                    (cliphist-select-item))
                   ((eq 2 other-source)
                    (my-select-from-kill-ring 'identity))
                   ((region-active-p)
                    (my-selected-str)))))
    ;; `swiper--re-builder' read from `ivy-re-builders-alist'
    ;; more flexible
    (swiper keyword)))

(provide 'init-customization)
;;; init-customization.el ends here
