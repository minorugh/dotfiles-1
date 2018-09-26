(defun other-window-or-split-horizontally ()
  (interactive)
  (when (one-window-p)
    (split-window-horizontally))
  (other-window 1))

;; To prevent emacs pinky, reading the source code in view-mode decrease the frequency of pressing ctrl key
(add-hook 'view-mode-hook
	  (lambda ()
	    (define-key view-mode-map "j" 'next-line)
	    (define-key view-mode-map "k" 'previous-line)
	    (define-key view-mode-map "h" 'backward-char)
	    (define-key view-mode-map "l" 'forward-char)
	    (define-key view-mode-map "i" 'view-mode)
	    (define-key view-mode-map "g" 'beginning-of-buffer)
	    (define-key view-mode-map "G" 'end-of-buffer)
	    (define-key view-mode-map "e" 'end-of-line)
	    (define-key view-mode-map "a" 'beginning-of-line)
	    (define-key view-mode-map "n" 'scroll-up-command)
	    (define-key view-mode-map "p" 'scroll-down-command)
	    (define-key view-mode-map "o" 'other-window-or-split)
	    (define-key view-mode-map "x" 'delete-window)
	    (define-key view-mode-map "0" 'delete-window)
	    (define-key view-mode-map "1" 'delete-other-windows)
	    (define-key view-mode-map "2" 'other-window-or-split)
	    (define-key view-mode-map "3" 'other-window-or-split-horizontally)
	    (define-key view-mode-map "/" 'swiper-for-region-or-swiper)
	    (define-key view-mode-map "\n" nil)
	    (define-key view-mode-map "\r" nil)))

;; key-chord
(setq key-chord-two-keys-delay 0.04)
(key-chord-mode 1)
(key-chord-define-global "jk" 'view-mode)
