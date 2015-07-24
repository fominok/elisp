;;; point-mutations.el --- Point Mutations (exercism)

;;; Commentary:

;;; Code:

(require 'cl)

(defun hamming-distance (dna1 dna2)
  "Determine number of mutations between DNA strands DNA1 and DNA2."
  (if (= (length dna1) (length dna2))
      (let ((dl1 (split-string-and-unquote dna1 ""))
            (dl2 (split-string-and-unquote dna2 "")))
        (loop with cnt = 0
              for x in dl1
              for y in dl2
              when (not (string= x y))
              do
              (setq cnt (1+ cnt))
              finally
              return cnt))
    (error "Strands are of different lengths")))


(provide 'point-mutations)
;;; point-mutations.el ends here
