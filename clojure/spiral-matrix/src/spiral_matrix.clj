(ns src.spiral-matrix)

(defn get-matrix [n]
  "generate a new, empty matrix"
  (repeat n (repeat n 0 )))

(defn rotate [m]
  "rotate the matrix"
  (let [size (dec (count m))]
    (for [i (range size -1 -1)] 
      (for [matrix m] (nth matrix i)))))

(defn done? [m]
  "any zeros left in the matrix?"
  (some true? (map #(some zero? %1) m)))

(defn list-update-in [l i x]
  "add item to list; see: https://stackoverflow.com/questions/40370240"
  (let [newlist (take i l)
        newlist (concat newlist (list x))
        newlist (concat newlist (drop (+ 1 i) l))]
    newlist))

(defn add-next-num [row]
  (let [i (.indexOf row 0)]
    (cond
      (= i -1) nil ;; shouldn't happen
      (= i 0) (list-update-in row 0 1)
      :default (list-update-in row i (inc (nth row (dec i)))))))

(defn recursive-spiral [m i]
  (let [rownum (rem i 4)
        row (nth m rownum)]  
    (case 
      (done? m) m
      (some zero? row) (list-update-in m rownum (add-next-num row))
      (recur (rotate) (inc i)))))

(defn spiral [n]
  (recursive-spiral (get-matrix n) 0))
