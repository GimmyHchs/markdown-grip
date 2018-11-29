;; markdown-grip.el --- Initialize markdown configurations.	-*- lexical-binding: t -*-
(use-package markdown-mode
  :defines flycheck-markdown-markdownlint-cli-config
  :preface
  ;; Install: pip install grip
  (defun markdown-preview-grip ()
    "Render and preview with `grip'."
    (interactive)
    (let ((port "6419"))
      (start-process "grip" "*gfm-to-html*" "grip" (buffer-file-name) port)
      (browse-url (format "http://localhost:%s/%s.%s"
                          port
                          (file-name-base)
                          (file-name-extension
                           (buffer-file-name))))))

  (defun kill-markdown-grip-process ()
    (interactive)
    "Kill the running process for preview markdown with `grip'."
    (delete-process "grip"))


  (spacemacs/declare-prefix-for-mode 'markdown-mode "mp" "markdown-grip")
  (spacemacs/set-leader-keys-for-major-mode 'markdown-mode
    "pp" 'markdown-preview-grip
    "pk" 'kill-markdown-grip-process)
)
(provide 'markdown-grip)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; markdown-grip.el ends here
