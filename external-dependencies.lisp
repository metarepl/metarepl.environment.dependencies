(in-package #:cl-user)
(defpackage #:external-dependencies
  (:use #:cl)
  (:export
   :check-dependencies
   ))

(in-package :external-dependencies)

(defun check-dependencies (dependencies)
  "
&&& not implemented
macro that takes quoted list of unquoted dep names
nice messages: package seeking, dep sought, found where
restartable errors when not found
"
  (dolist (dep dependencies)
    (format t "&&& not checking:~A" dep)))
