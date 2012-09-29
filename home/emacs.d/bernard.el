(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-babel-load-languages (quote ((emacs-lisp . t) (C . t) (sh . t) (R . t) (sql . t) (clojure . t) (plantuml . t) (ditaa . t) (dot . t))))
 '(org-src-preserve-indentation t))
(setq org-link-abbrev-alist
       '(("bugzilla" . "http://10.1.2.9/bugzilla/show_bug.cgi?id=")
         ("google"   . "http://www.google.com/search?q=")
         ("ggdef"   . "http://www.google.com/search?q=define:")
         ("gmap"     . "http://maps.google.com/maps?q=%s")
         ("wksearch"     . "https://en.wikipedia.org/w/index.php?search=")
         ("omap"     . "http://nominatim.openstreetmap.org/search?q=%s&polygon=1")
         ("ads"      . "http://adsabs.harvard.edu/cgi-bin/nph-abs_connect?author=%s&db_key=AST")))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(server-start)
(add-to-list 'load-path "/usr/share/emacs/24.0.94/lisp/org/")
(require 'org-protocol)
;; (autoload 'deft "deft.el" "Deft mode" t)
;; (setq deft-extension "org")
;; (setq deft-directory "~/org/notes")
;; (setq deft-text-mode 'org-mode)
;; (setq deft-use-filename-as-title t)
;; (setq deft-auto-save-interval 0)
;;(add-to-list 'tramp-default-method-alist '("mcube\\.isep\\.fr" "" "ssh"))

;; (add-to-list 'tramp-default-user-alist
;;              '("ssh" "mcube\\.isep\\.fr" "bhuguene"))

(defun close-and-kill-this-pane ()
      "Close this pane and kill the buffer in it also."
      (interactive)
      (kill-buffer (buffer-name (current-buffer)))
      (delete-window)
    )
(defun close-and-kill-other ()
      "Close the other pane and kill the buffer in it also."
      (interactive)
      (other-window 1)
      (close-and-kill-this-pane)
    )

(require 'org-crypt)
(org-crypt-use-before-save-magic)
(setq org-tags-exclude-from-inheritance (quote ("crypt")))
;; GPG key to use for encryption
;; Either the Key ID or set to nil to use symmetric encryption.
(setq org-crypt-key "6c:ab:a1:51:d4:05:d7:d3:b9:df:09:02:2e:4a:72:67")
;; http://mobileorg.ncogni.to/doc/getting-started/encryption/
;; http://mobileorg.ncogni.to/doc/getting-started/using-dropbox/
(require 'org-e-latex)
(require 'org-e-beamer)
;;https://lists.gnu.org/archive/html/emacs-orgmode/2012-09/msg01005.html
    (require 'org-export)
    (require 'org-e-latex)
    (require 'org-e-html)
    (setq org-export-latex-packages-alist nil)
;;    (add-to-list 'org-export-latex-packages-alist '("colorlinks=true,urlcolor=SteelBlue4,linkcolor=Firebrick4,citecolor=Green4" "hyperref"))
;;    (add-to-list 'org-export-latex-packages-alist '("style=authoryear-comp,backend=bibtex8" "biblatex"))
;;    (add-to-list 'org-export-latex-packages-alist '("x11names" "xcolor"))
    (add-to-list 'org-export-latex-packages-alist '("" "microtype"))
(add-to-list 'org-export-latex-packages-alist '("" "amssymb"))
(add-to-list 'org-export-latex-packages-alist '("" "ulem"))
    (add-to-list 'org-export-latex-packages-alist '("" "color"))
(add-to-list 'org-export-latex-packages-alist '("" "graphicx"))
    (add-to-list 'org-export-latex-packages-alist '("" "ragged2e"))
    (add-to-list 'org-export-latex-packages-alist '("" "booktabs"))
    (add-to-list 'org-export-latex-packages-alist '("" "tabularx"))
    (add-to-list 'org-export-latex-packages-alist '("" "colortbl"))
;;    (add-to-list 'org-export-latex-packages-alist '("" "tsdlucida"))
    (add-to-list 'org-export-latex-packages-alist '("" "wasysym"))
    (add-to-list 'org-export-latex-packages-alist '("" "paralist"))
;;     (add-to-list 'org-export-latex-packages-alist 
;; '("altbullet,lucidasmallscale,expert,vargreek" "lucidabr"))
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
;;    (setq org-export-latex-hyperref-format "\\ref{%s}")
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
(setq org-export-latex-listings 'minted)
(setq org-e-latex-listings 'minted)
;;http://article.gmane.org/gmane.emacs.orgmode/60830
(add-to-list 'org-e-latex-classes
;;              '("beamer"
;;                "\\documentclass[presentation]{beamer}\n
;; \\usepackage[utf8]{inputenc}\n"
;;                ("\\section{%s}" . "\\section*{%s}")
;;                ("\\subsection{%s}" . "\\subsection*{%s}")
             ;;                ("\\subsubsection{%s}" . "\\subsubsection*{%s}"))
'("beamer"
     "\\documentclass[11pt]{beamer}\n
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
     ("\\subsection{%s}" . "\\subsection*{%s}")))             
;; (add-to-list 'org-export-latex-classes

;;   '("letter"
;;      "\\documentclass[11pt]{letter}\n
;;       \\usepackage[utf8]{inputenc}\n
;;       \\usepackage[T1]{fontenc}\n
;;       \\usepackage{color}"
     
;;      ("\\section{%s}" . "\\section*{%s}")
;;      ("\\subsection{%s}" . "\\subsection*{%s}")
;;      ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
;;      ("\\paragraph{%s}" . "\\paragraph*{%s}")
;;      ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))
;; https://gist.github.com/605245
(setq org-directory "~/Perso")
(setq org-mobile-directory "~/Dropbox/Mobile-org")
;; Set to the name of the file where new notes will be stored
(setq org-mobile-inbox-for-pull "~/Dropbox/inbox.org")

;; Patch ob-clojure to work with nrepl
(declare-function nrepl-send-string-sync "ext:nrepl" (code &optional ns))
;; TODO Download nrepl-0.1.4-preview from Marmalade or MELPA (depends on clojure-mode 1.11).
(defun org-babel-execute:clojure (body params)
  "Execute a block of Clojure code with Babel."
  (require 'nrepl)
  (with-temp-buffer
    (insert (org-babel-expand-body:clojure body params))
    ((lambda (result)
       (let ((result-params (cdr (assoc :result-params params))))
         (if (or (member "scalar" result-params)
                 (member "verbatim" result-params))
             result
           (condition-case nil (org-babel-script-escape result)
             (error result)))))
     (plist-get (nrepl-send-string-sync
                 (buffer-substring-no-properties (point-min) (point-max))
                 (cdr (assoc :package params)))
                :value))))
