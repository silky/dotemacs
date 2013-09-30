(require-package 'smart-mode-line)
(require 'smart-mode-line)
(if after-init-time (sml/setup)
  (add-hook 'after-init-hook 'sml/setup))

(require-package 'diminish)
(require 'diminish)
(after-load 'undo-tree (diminish 'undo-tree-mode))
(after-load 'auto-complete (diminish 'auto-complete-mode))
(after-load 'projectile (diminish 'projectile-mode))
(after-load 'yasnippet (diminish 'yas-minor-mode))
(after-load 'guide-key (diminish 'guide-key-mode))
(after-load 'eldoc (diminish 'eldoc-mode))
(after-load 'smartparens (diminish 'smartparens-mode))
(after-load 'company (diminish 'company-mode))
(after-load 'git-gutter+ (diminish 'git-gutter+-mode))

(when (display-graphic-p)
  (set-face-attribute 'default nil :font "Ubuntu Mono-14")
  (fringe-mode 16))

(global-hl-line-mode +1)
(require 'linum)
(global-linum-mode t)
(setq linum-format "%4d "
      linum-delay t
      linum-eager nil)

(if (display-graphic-p)
    (progn
      ;; (require-package 'soothe-theme)
      (require-package 'birds-of-paradise-plus-theme)
      (load-theme 'birds-of-paradise-plus))
  (progn
    (require-package 'monokai-theme)
    (load-theme 'monokai t)))

(provide 'init-eyecandy)
