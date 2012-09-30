(require 'org-export)
(require 'org-e-html)
(require 'org-e-latex)
(require 'org-e-beamer)
(require 'org-protocol)
(require 'org-crypt)

(setq org-babel-load-languages '((emacs-lisp . t) (C . t) (sh . t) (R . t) (sql . t) (clojure . t) (plantuml . t) (ditaa . t) (dot . t)))
(setq org-link-abbrev-alist
       '(("bugzilla" . "http://10.1.2.9/bugzilla/show_bug.cgi?id=")
         ("google"   . "http://www.google.com/search?q=")
         ("ggdef"   . "http://www.google.com/search?q=define:")
         ("gmap"     . "http://maps.google.com/maps?q=%s")
         ("wksearch"     . "https://en.wikipedia.org/w/index.php?search=")
         ("omap"     . "http://nominatim.openstreetmap.org/search?q=%s&polygon=1")
         ("ads"      . "http://adsabs.harvard.edu/cgi-bin/nph-abs_connect?author=%s&db_key=AST")))
(server-start)
(org-crypt-use-before-save-magic)
(setq org-tags-exclude-from-inheritance (quote ("crypt")))

(setq org-export-latex-packages-alist nil)
(add-to-list 'org-export-latex-packages-alist '("" "microtype"))
(add-to-list 'org-export-latex-packages-alist '("" "amssymb"))
(add-to-list 'org-export-latex-packages-alist '("" "ulem"))
(add-to-list 'org-export-latex-packages-alist '("" "color"))
(add-to-list 'org-export-latex-packages-alist '("" "graphicx"))
(add-to-list 'org-export-latex-packages-alist '("" "ragged2e"))
(add-to-list 'org-export-latex-packages-alist '("" "booktabs"))
(add-to-list 'org-export-latex-packages-alist '("" "tabularx"))
(add-to-list 'org-export-latex-packages-alist '("" "colortbl"))
(add-to-list 'org-export-latex-packages-alist '("" "wasysym"))
(add-to-list 'org-export-latex-packages-alist '("" "minted"))
(add-to-list 'org-export-latex-packages-alist '("" "paralist"))
(add-to-list 'org-export-latex-packages-alist '("T1" "fontenc"))
(add-to-list 'org-export-latex-packages-alist '("AUTO" "inputenc"))
(setq org-entities-user nil) 
(add-to-list 'org-entities-user '("space" "\\ " nil " " " " " " " "))
(add-to-list 'org-entities-user '("amacron" "\\={a}" nil "&#0257" "a" "a" "ā"))
(add-to-list 'org-entities-user '("emacron" "\\={e}" nil "&#0275" "e" "e" "ē"))
(add-to-list 'org-entities-user '("imacron" "\\={i}" nil "&#0299" "i" "i" "ī"))
(add-to-list 'org-entities-user '("omacron" "\\={o}" nil "&#0333" "o" "o" "ō"))
(add-to-list 'org-entities-user '("umacron" "\\={u}" nil "&#0363" "u" "u" "ū"))
(add-to-list 'org-entities-user '("Amacron" "\\={A}" nil "&#0256" "A" "A" "Ā"))
(add-to-list 'org-entities-user '("Emacron" "\\={E}" nil "&#0274" "E" "E" "Ē"))
(add-to-list 'org-entities-user '("Imacron" "\\={I}" nil "&#0298" "I" "I" "Ī"))
(add-to-list 'org-entities-user '("Omacron" "\\={O}" nil "&#0332" "O" "O" "Ō"))
(add-to-list 'org-entities-user '("Umacron" "\\={U}" nil "&#0362" "U" "U" "Ū"))

(setq org-e-latex-pdf-process '("texi2dvi --pdf --clean --verbose --batch %f"))
(define-key org-mode-map (kbd "C-c e") 'org-export-dispatch)
(setq org-e-latex-tables-booktabs t)
    (setq org-e-latex-remove-logfiles nil)
    (setq org-e-latex-toc-command "\\tableofcontents\n\n")
(add-to-list 'org-e-latex-classes
                 '("koma-article"
                   "\\documentclass{scrartcl}
      \\let\\itemize\\compactitem
      \\let\\description\\compactdesc
      \\let\\enumerate\\compactenum
      \\bibliography{local}
      \\newcolumntype{Y}{>{\\RaggedRight\\arraybackslash}X}"
                   ("\\section{%s}" . "\\section*{%s}")
                   ("\\subsection{%s}" . "\\subsection*{%s}")
                   ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                   ("\\paragraph{%s}" . "\\paragraph*{%s}")
                   ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))
;;(setq org-export-latex-listings 'minted)
(setq org-e-latex-listings 'minted)
;;http://article.gmane.org/gmane.emacs.orgmode/60830
(add-to-list 'org-e-latex-classes
'("beamer"
     "\\documentclass[presentation]{beamer}\n
      \\usepackage[utf8]{inputenc}\n
      \\usepackage[T1]{fontenc}\n
      \\usepackage{hyperref}\n
      \\usepackage{color}
      \\usepackage{minted}
      \\usepackage{minted}
      \\usepackage{listings}
      \\lstset{numbers=none,language=[ISO]C++,tabsize=4,
  frame=single,
  basicstyle=\\small,
  showspaces=false,showstringspaces=false,
  showtabs=false,
  keywordstyle=\\color{blue}\\bfseries,
  commentstyle=\\color{red},
  }\n
      \\usepackage{verbatim}\n"
     ("\\section{%s}" . "\\section*{%s}")
     ("\\subsection{%s}" . "\\subsection*{%s}")
     ("\\subsubsection{%s}" . "\\subsubsection*{%s}")))             


(global-hl-line-mode 1)
(set-face-background 'hl-line "#333333")
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(unless (package-installed-p 'cyberpunk-theme)
        (package-install 'cyberpunk-theme))
(load-theme 'cyberpunk t)
(set-cursor-color "yellow")


(setq ispell-program-name "aspell" ; use aspell instead of ispell
      ispell-extra-args '("--sug-mode=ultra"))(autoload 'flyspell-mode "flyspell" "On-the-fly spelling checker." t)
;; UGLY 
(load-file (expand-file-name "~/.emacs.d/lib/cosmetic.el"))
(require 'undo-tree)
(global-undo-tree-mode)
