(in-package #:cl-user)
(defpackage #:metarepl.environment.dependencies/conda
  (:use #:cl)
  (:export
   :current-env
   :set-env
   :create-env
   :install-package
   ))

(in-package :metarepl.environment.dependencies/conda)

(defun current-env ()
  "reports current environment"
  (first
   (str:words
    (first
     (remove-if-not (lambda (s) (str:containsp "*" s))
                    (str:lines (cmd:$cmd "conda env list")))))))

(defun set-env (env)
  "sets active environment. "
  (format t "does not work on current repl")
  (warn "does not change repl env")
  (swank:eval-in-emacs `(conda-env-activate ,env)))

(defun create-env (env)
  "creates an environment"
  (cmd:cmd (format nil "conda create -n ~A" env)))

(defun install-package (env package)
  (cmd:cmd (format nil "conda install --name ~A ~A" env package)))


;; conda run -n some-environment
;; usage: conda run [-h] [-n ENVIRONMENT | -p PATH] [-v] [--dev]
;;                  [--debug-wrapper-scripts] [--cwd CWD] [-s]
;;                  ...
