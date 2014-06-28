(defn collection-type [col]
  (if
    (instance? clojure.lang.PersistentVector col) :vector
    (if
      (instance? clojure.lang.PersistentArrayMap col) :map
      (if
        (instance? clojure.lang.PersistentList col) :list
      )
    )
  )
)
