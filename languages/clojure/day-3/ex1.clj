(def accounts (ref []))

(defn inc_quantity [accounts id quantity]
  (assoc accounts id (+ (accounts id) quantity)))

(defn dec_quantity [accounts id quantity]
  (assoc accounts id (- (accounts id) quantity)))

(defn credit [accounts id quantity]
  (dosync (alter accounts inc_quantity id quantity)))

(defn debit [accounts id quantity]
  (dosync (alter accounts dec_quantity id quantity)))

(defn create_account [accounts]
  (dosync (alter accounts (comp vec concat) [0])))
