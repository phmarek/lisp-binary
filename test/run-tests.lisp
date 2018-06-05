(format t "~%>>>>>>>>>>> Test program loading~%")
(load "init.lisp")
(format t "~%>>>>>>>>>>>>> Loaded init file~%")
(ql:quickload :lisp-binary)
(format t "~%>>>>>>>> LISP-BINARY library successfully loaded~%")
(load "basic-test.lisp")

(format t "~%>>>>>>>>>> Test program successfully loaded~%")

(lisp-binary-test::run-test)
#+sbcl (exit)
#+clisp (ext:exit)
#+ccl (ccl:quit)
