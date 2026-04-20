(defsystem "lamb.environment.dependencies"
  :description "external dependencies and conda"
  :author "common-lamb (https://github.com/common-lamb)"
  :version "0.0.1"
  :license "MIT"
  :depends-on (
               :lamb.base.click
               )
  :serial t
  :components ((:file "conda")
               (:file "external-dependencies"))
  )
