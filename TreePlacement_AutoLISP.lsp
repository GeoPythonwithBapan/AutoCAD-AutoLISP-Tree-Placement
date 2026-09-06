(defun c:PT2BLK ( / ss i ent pt blkname scl)
  (setq blkname "TREE") ;; block name

  ;;  user input scale
  (setq scl (getreal "\nEnter tree scale (e.g. 0.05 / 0.1 / 1): "))

  ;; default 1
  (if (null scl) (setq scl 1.0))

  (setq ss (ssget '((0 . "POINT,AECC_COGO_POINT"))))

  (if ss
    (progn
      (setq i 0)
      (while (< i (sslength ss))
        (setq ent (ssname ss i))
        (setq pt (cdr (assoc 10 (entget ent))))

        ;; insert block with user scale
        (command "_.-insert" blkname pt scl scl scl 0)

        (setq i (1+ i))
      )
      (prompt "\nAll points converted to blocks successfully!")
    )
    (prompt "\nNo points found!")
  )
  (princ)
)