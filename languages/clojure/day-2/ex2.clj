(defprotocol Helloer
  (hello [c name]))

(defrecord PoliteMan [] Helloer
  (hello [c name] (str "Good morning Mr. " name ".")))
