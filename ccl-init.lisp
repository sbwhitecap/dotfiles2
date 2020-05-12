(setf ccl:*default-external-format*
            (ccl:make-external-format :character-encoding :utf-8
                                              :line-termination :unix)
            ccl:*default-file-character-encoding* :utf-8
            ccl:*default-socket-character-encoding* :utf-8)

;;; The following lines added by ql:add-to-init-file:
#-quicklisp
(let ((quicklisp-init (merge-pathnames "quicklisp/setup.lisp" (user-homedir-pathname))))
  (when (probe-file quicklisp-init)
    (load quicklisp-init)))

