;;; init-package --- config my local packages
;;; Code:

(require 'cl)

;;; add package here
(defvar ideconfu/packages '(
                            monokai-theme
                            hungry-delete
                            counsel
                            swiper
                            popwin
                            expand-region
                            iedit
                            evil
                            evil-leader
                            window-numbering
                            evil-surround
                            evil-nerd-commenter
                            xclip
                            challenger-deep-theme
                            ) "Default packages")

(defun ideconfu/packages-installed-p ()
  (loop for pkg in ideconfu/packages
        when (not (package-installed-p pkg)) do (return nil)
        finally (return t)))

(unless (ideconfu/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg ideconfu/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

(provide 'init-package)
;;;init-package end here
