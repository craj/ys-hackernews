(test-iso "find works on lists"
  #\b
  (find #\b '(#\a #\b #\c)))

(test-iso "find works on lists - 2"
  nil
  (find #\d '(#\a #\b #\c)))

(test-iso "find handles arbitrary predicate"
  34
  (find even '(33 34 35)))

(test-iso "find handles arbitrary predicate - 2"
  34
  (find even '(34 35)))

(test-iso "find handles arbitrary predicate - 3"
  34
  (find even '(33 34)))

(test-iso "find handles arbitrary predicate - 4"
  34
  (find even '(34)))

(test-iso "find handles arbitrary predicate - 4"
  nil
  (find even '(35)))

(test-iso "find returns first match"
  34
  (find even '(34 35 36)))

(test-iso "find works on strings"
  #\b
  (find #\b "abc"))

(test-iso "find works on strings - 2"
  nil
  (find #\d "abc"))

(test-iso "find works on improper lists"
  'a
  (find 'a '(a b . c)))

(test-iso "find works on improper lists - 2"
  'c
  (find 'c '(a b . c)))

(test-iso "find works on improper lists - 3"
  nil
  (find 'd '(a b . c)))

(test-iso "mem works"
  '(6 7)
  (mem 6 '(2 4 5 6 7)))

(test-iso "mem works on improper lists"
  '(6 . 7)
  (mem 6 '(2 4 5 6 . 7)))

(test-iso "mem works on improper lists - 2"
  6
  (mem 6 '(2 4 5 . 6)))
