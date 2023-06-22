(ns hello-world)

(defn hello
  ([] (hello "World"))
  ([adressee] (str "Hello, " adressee "!")))