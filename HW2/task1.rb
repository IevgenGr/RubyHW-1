# frozen_string_literal: true

array = [
  621, 445, 147, 159, 430, 222, 482, 44, 194, 522,
  652, 494, 14, 126, 532, 387, 441, 471, 337, 446,
  18, 36, 202, 574, 556, 458, 16, 139, 222, 220,
  107, 82, 264, 366, 501, 319, 314, 430, 55, 336
]
horizontal_line_separator = '-------------------------------------------'

puts 'узнать количество элементов в массиве;'
p array
p array.size
puts horizontal_line_separator

puts 'перевернуть массив;'
p array
p array.reverse
puts horizontal_line_separator

puts 'найти наибольшее число;'
p array
p array.max
puts horizontal_line_separator

puts 'найти наименьшее число;'
p array
p array.min
puts horizontal_line_separator

puts 'отсортировать от меньшего к большему;'
p array
p array.sort
puts horizontal_line_separator

puts 'отсортировать от большего к меньшему;'
p array
p array.sort.reverse
puts horizontal_line_separator

puts 'удалить все нечетные числа;'
p array
p array.map.select(&:even?)
puts horizontal_line_separator

puts 'оставить только те числа, которые без остатка делятся на 3;'
p array
p array.map.select { |el| (el % 3).zero? }
puts horizontal_line_separator

puts 'удалить из массива числа, которые повторяются (то есть, нужно вывести массив, в котором нет повторов);'
p array
p array.map.uniq
puts horizontal_line_separator

puts 'разделить каждый элемент на 10, в результате элементы не должны быть округлены до целого;'
p array
p array.map { |el| el.to_f / 10 }
puts horizontal_line_separator

puts 'получить новый массив, который бы содержал в себе те буквы английского алфавита, порядковый номер которых есть в нашем массиве;'
p array
array2        = []
array3        = []
array2[1..26] = ('a'..'z').to_a
array.each do |el|
  array3 << array2.values_at(el) if el <= (array2.size - 1)
end
p array3.flatten
puts horizontal_line_separator

puts 'поменять местами минимальный и максимальный элементы массива;'
p array
array_temp                             = array
min_el                                 = array_temp.each_with_index.min[1]
max_el                                 = array_temp.each_with_index.max[1]
array_temp[min_el], array_temp[max_el] = array_temp[max_el], array_temp[min_el]
p array_temp
p horizontal_line_separator

puts 'найти элементы, которые находятся перед минимальным числом в массиве;'
p array
p array[0...array.index(array.min)]
puts horizontal_line_separator

puts 'необходимо найти три наименьших элемента.'
p array
p array.min(3)
