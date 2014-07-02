(defn collection-type [col]
  (cond
    (instance? clojure.lang.PersistentVector col) :vector
    (instance? clojure.lang.PersistentArrayMap col) :map
    (instance? clojure.lang.PersistentList col) :list
    :else nil
  )
)
