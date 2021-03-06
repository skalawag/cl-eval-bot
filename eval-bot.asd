(defsystem :eval-bot
  :depends-on (:bordeaux-threads :trivial-irc :alexandria :split-sequence
                                 :babel)
  :components
  ((:file "sandbox-impl" :depends-on ("common"))
   (:file "sandbox-extra" :depends-on ("common" "sandbox-impl" "sandbox-cl"))
   (:file "sandbox-cl" :depends-on ("sandbox-impl"))
   (:file "common")
   (:file "eval-bot" :depends-on ("common" "sandbox-impl"))))
