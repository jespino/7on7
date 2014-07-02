(defmacro unless [test body else]
  (list 'if (list 'not test) body else))
