
(use-package org-mode
  :defer t
  :mode "\\.org\\'"
  :bind (("<C-tab>" . elscreen-next)
         ("<c-return>" . org-force-cycle-archived))
  )
