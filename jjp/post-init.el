(let ((dir (file-name-directory (or load-file-name buffer-file-name))))
  (dolist (file '("core" "ui" "state" "editing" "programming"))
    (load (expand-file-name file dir) nil t)))
