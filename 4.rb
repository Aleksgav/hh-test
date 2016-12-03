=begin

  Для n = 5 и k = 3 число различных сочетаний из n по k = 10:
  (1, 2, 3),
  (1, 2, 4),
  (1, 2, 5),
  (1, 3, 4),
  (1, 3, 5),
  (1, 4, 5),
  (2, 3, 4),
  (2, 3, 5),
  (2, 4, 5),
  (3, 5, 4)

  Для какого количества пар n и k, при условии 1 <= n < 156 и 1<= k < n , число сочетаний из n по k больше 1 000 000?

=end

count = 0

(1..155).each do |n|
  (1...n).each do |k|
    n_fac = (1..n).inject(:*)
    k_fac = (1..k).inject(:*)
    eq_fac = (1..(n - k)).inject(:*)

    combinations = ( n_fac / (k_fac * eq_fac))
    next if combinations <= 1_000_000

    puts "N: #{n}, K: #{k}"
    count += 1
  end
end

p count