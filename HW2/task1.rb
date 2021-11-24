# frozen_string_literal: true

array = [
  621, 445, 147, 159, 430, 222, 482, 44, 194, 522,
  652, 494, 14, 126, 532, 387, 441, 471, 337, 446,
  18, 36, 202, 574, 556, 458, 16, 139, 222, 220,
  107, 82, 264, 366, 501, 319, 314, 430, 55, 336
]
horizontal_line_separator = '-------------------------------------------'

# – узнать количество элементов в массиве;

p array.size
p horizontal_line_separator

# – перевернуть массив;

p array.reverse
p horizontal_line_separator

# – найти наибольшее число;

p array.max
p horizontal_line_separator

# – найти наименьшее число;

p array.min
p horizontal_line_separator

# – отсортировать от меньшего к большему;

p array.sort
p horizontal_line_separator

# – отсортировать от большего к меньшему;

p array.sort.reverse
p horizontal_line_separator

# – удалить все нечетные числа;

p array.delete_if(&:odd?)
p horizontal_line_separator

# – оставить только те числа, которые без остатка делятся на 3;

p array.delete_if { |el| (el % 3).zero? }
p horizontal_line_separator

# – удалить из массива числа, которые повторяются (то есть, нужно вывести массив, в котором нет повторов);

p array.uniq
p horizontal_line_separator

# – разделить каждый элемент на 10, в результате элементы не должны быть округлены до целого;

p array.map { |el| el.to_f / 10 }
p horizontal_line_separator

# – получить новый массив, который бы содержал в себе те буквы английского алфавита, порядковый номер которых есть в нашем массиве;

array2        = []
array3        = []
array2[1..26] = ('a'..'z').to_a
array.each do |el|
  array3 << array2.values_at(el) if el <= (array2.size - 1)
end
p array3.flatten
p horizontal_line_separator

# – поменять местами минимальный и максимальный элементы массива; PROBLEMS

array_temp                             = array
min_el                                 = array_temp.each_with_index.min[1]
max_el                                 = array_temp.each_with_index.max[1]
array_temp[min_el], array_temp[max_el] = array_temp[max_el], array_temp[min_el]
p array_temp
p horizontal_line_separator

# – найти элементы, которые находятся перед минимальным числом в массиве;

p array[0...array.index(array.min)]
p horizontal_line_separator

# – необходимо найти три наименьших элемента.

p array.min(3)
