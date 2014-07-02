(defprotocol Helloer
  (hello [c name]))

(defrecord PoliteMan [] Helloer
  (hello [_ name] (str "Good morning Mr. " name ".")))
