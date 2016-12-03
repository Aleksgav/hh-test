=begin

  Если мы возьмем 47, перевернем его и сложим, получится число 121 - палиндром.
  Если взять 349 и проделать над ним эту операцию 3 раза, то тоже получится палиндром:
  349 + 943 = 1 292
  1 292 + 2 921 = 4 213
  4 213 + 3 124 = 7 337

  Найдите количество положительных натуральных чисел меньших 12 666, таких, что из них нельзя получить палиндром за 50 или менее применений описанной операции.

=end

palindrome =-> n { n = n.to_s; n == n.reverse }

not_palindrom =-> digit, cycle = 50 do
  cycle.times do
    return false if palindrome.call(digit)
    digit += digit.to_s.reverse.to_i
  end
end

#12666
def Integer.all
  Enumerator.new do |yielder, n: 0| #yielder это переменная для вывода через yield
  loop { yielder.yield(n += 1)}
  end.lazy
end

p Integer
    .all
    .first(12665)
    .select(&not_palindrom)
    .count

p Integer
      .all
      .first(1000)
      .select(&not_palindrom)

