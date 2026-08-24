(defsystem "metarepl.environment.dependencies"
  :description "external dependencies and conda"
  :author "metarepl (https://github.com/metarepl)"
  :version "0.0.1"
  :license "MIT"
  :depends-on (:shelter)
  :serial t
  :components ((:file "conda")
               (:file "external-dependencies"))
  )
