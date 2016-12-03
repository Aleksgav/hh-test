=begin

  Рассмотрим спираль, в которой, начиная с 1 в центре, последовательно расставим числа по часовой стрелке, пока не получится спираль 5 на 5.
  Можно проверить, что сумма всех чисел на диагоналях равна 101.

  Чему будет равна сумма чисел на диагоналях, для спирали размером 1 091 на 1 091?

  Пример спирали:
  111	112	113	114	115	116	117	118	119	120	121
  110	73	74	75	76	77	78	79	80	81	82
  109	72	43	44	45	46	47	48	49	50	83
  108	71	42	21	22	23	24	25	26	51	84
  107	70	41	20	7	  8	  9	  10	27	52	85
  106	69	40	19	6	  1	  2	  11	28	53	86
  105	68	39	18	5	  4	  3	  12	29	54	87
  104	67	38	17	16	15	14	13	30	55	88
  103	66	37	36	35	34	33	32	31	56	89
  102	65	64	63	62	61	60	59	58	57	90
  101	100	99	98	97	96	95	94	93	92	91

=end

# сумма натурального ряда
def natural_number_summ(diagonal_steps)
  5 * ((diagonal_steps * (diagonal_steps + 1)) / 2)
end

# сумма пирамидального ряда
def pyramidal_summ(diagonal_steps)
  pyramid_digit_steps = diagonal_steps - 1
  8 * ((pyramid_digit_steps * (pyramid_digit_steps + 1) * (pyramid_digit_steps + 2)) / 6)
end

# сумма оставшегося члена
def last_part_summ(diagonal_steps)
  1 * diagonal_steps
end

def diagonal_summ(square_size)
  diagonal_steps = (square_size - 1) / 2

  summ_of_row = natural_number_summ(diagonal_steps)
  pyramid_digit = pyramidal_summ(diagonal_steps)
  summ_of_last = last_part_summ(diagonal_steps)

  4 * (summ_of_row + pyramid_digit + summ_of_last) + 1
end

puts diagonal_summ(1091)
puts diagonal_summ(3)
