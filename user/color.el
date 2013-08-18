(require 'color-theme)
(require 'color-theme-solarized)

;; taken from solarized-definitions.el `solarized-color-definitions`
(defun color-theme-color (name)
  (let ((index (if window-system
                   (if solarized-degrade
                       3
                     (if solarized-broken-srgb 2 1))
                 (case (display-color-cells)
                   (16 4)
                   (8  5)
                   (otherwise 3)))))
    (nth index (assoc name solarized-colors))))

;; make the fringe (left and right borders) the same color as the background
(set-face-attribute 'fringe nil
                    :background (color-theme-color 'base03))

(set-face-attribute 'region nil
                    :foreground (color-theme-color 'base02)
                    :background (color-theme-color 'base2))
