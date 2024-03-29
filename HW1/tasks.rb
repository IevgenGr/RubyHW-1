# frozen_string_literal: true

@array = [-3, -2, 2, -1, 0, 1, 2]

def horizontal_line_separator
  p '-------------------------------------------'
end

def task_1
  p 'Дан целочисленный массив. Необходимо вывести вначале его элементы с четными индексами, а затем - с нечетными.'
  p @array
  even = @array.each_with_index { |e, i| p e if i.even? }
  odd  = @array.each_with_index { |e, i| p e if i.odd? }
  p even
  p odd
  horizontal_line_separator
end

def task_2
  p 'Дан целочисленный массив. Необходимо вывести вначале его элементы с нечетными индексами, а затем - четными.'
  p @array
  odd  = @array.each_with_index { |e, i| p e if i.odd? }
  even = @array.each_with_index { |e, i| p e if i.even? }
  p odd
  p even
  horizontal_line_separator
end

def task_3
  p 'Дан целочисленный массив. Вывести номер первого из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет,то вывести [ ].'
  p @array
  index = @array.index { |i| @array[0] < i && i < @array[-1] } || '[ ]'
  p index
  horizontal_line_separator
end

def task_4
  p 'Дан целочисленный массив. Вывести номер последнего из тех его элементов,которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ].'
  p @array
  index = @array.index(@array.select { |i| @array[0] < i && i < @array[-1] }.last) || '[ ]'
  p index
  horizontal_line_separator
end

def task_9
  p 'Дан целочисленный массив. Заменить все положительные элементына значение минимального.'
  p @array
  array_min                   = @array.min
  replace_positive_on_minimum = @array.map { |i| i.positive? ? array_min : i }
  p replace_positive_on_minimum
  horizontal_line_separator
end

def task_10
  p 'Дан целочисленный массив. Заменить все положительные элементы на значение максимального.'
  p @array
  array_max                   = @array.max
  replace_positive_on_maximum = @array.map { |i| i.positive? ? array_max : i }
  p replace_positive_on_maximum
  horizontal_line_separator
end

def task_11
  p 'Дан целочисленный массив. Заменить все отрицательные элементы на значение минимального.'
  p @array
  array_min                   = @array.min
  replace_negative_on_minimum = @array.map { |i| i.negative? ? array_min : i }
  p replace_negative_on_minimum
  horizontal_line_separator
end

def task_12
  p 'Дан целочисленный массив. Заменить все отрицательные элементы на значение максимального.'
  p @array
  array_max                   = @array.max
  replace_negative_on_maximum = @array.map { |i| i.negative? ? array_max : i}
  p replace_negative_on_maximum
  horizontal_line_separator
end

def task_13
  p 'Дан целочисленный массив. Осуществить циклический сдвиг элементов массива влево на одну позицию.'
  p @array
  p @array.rotate(1)
  horizontal_line_separator
end

def task_14
  p 'Дан целочисленный массив. Осуществить циклический сдвиг элементов массива вправо на одну позицию.'
  p @array
  p @array.rotate(-1)
  horizontal_line_separator
end

def task_17
  p 'Дан целочисленный массив. Найти количество его локальных максимумов.'
  p @array
  p @array.each_index.select { |i| @array[i] > @array[i - 1] && @array[i] > @array[i + 1] }.size
  horizontal_line_separator
end

def task_18
  p 'Дан целочисленный массив. Найти количество его локальных минимумов.'
  p @array
  p @array.each_index.select { |i| @array[i - 1] && @array[i] < @array[i - 1] && @array[i + 1] && @array[i] < @array[i + 1] }.size
  horizontal_line_separator
end

def task_19
  p 'Дан целочисленный массив. Найти максимальный из его локальных максимумов.'
  p @array
  p @array.select { |el| el > @array[@array.index(el) - 1] && el > @array[@array.index(el) + 1] }.max
  horizontal_line_separator
end

def task_20
  p 'Дан целочисленный массив. Найти минимальный из его локальных минимумов.'
  p @array
  p @array.select { |el| @array[@array.index(el) - 1] && el < @array[@array.index(el) - 1] && @array[@array.index(el) + 1] && el < @array[@array.index(el) + 1] }.min
  horizontal_line_separator
end

def task_25
  p 'Дан целочисленный массив. Преобразовать его, вставив перед каждым положительным элементом нулевой элемент.'
  a = @array
  p a
  p a.map! { |el| el.positive? ? [a.first, el] : el }.flatten
  horizontal_line_separator
end

def task_26
  p 'Дан целочисленный массив. Преобразовать его, вставив перед каждым отрицательным элементом нулевой элемент.'
  a = @array
  p a
  p a.map! { |el| el.negative? ? [a.first, el] : el }.flatten
  horizontal_line_separator
end

def task_27
  p 'Дан целочисленный массив. Преобразовать его, вставив после каждого положительного элементом нулевой элемент.'
  a = @array
  p a
  p a.map! { |el| el.positive? ? [el, a.first] : el }.flatten
  horizontal_line_separator
end

def task_28
  p 'Дан целочисленный массив. Преобразовать его, вставив после каждого отрицательного элементом нулевой элемент.'
  a = @array
  p a
  p a.map! { |el| el.negative? ? [el, a.first] : el }.flatten
  horizontal_line_separator
end

def task_29
  p 'Дан целочисленный массив. Упорядочить его по возрастанию.'
  p @array
  p @array.sort
  horizontal_line_separator
end

def task_30
  p 'Дан целочисленный массив. Упорядочить его по убыванию.'
  p @array
  p @array.sort.reverse
  horizontal_line_separator
end

def task_31
  p 'Дан целочисленный массив. Вывести индексы массива в том порядке, в котором соответствующие им элементы образуют убывающую последовательность.'
  p @array
  p (0...@array.size).sort_by { |i| @array[i] }.reverse
  horizontal_line_separator
end

def task_32
  p 'Дан целочисленный массив. Вывести индексы массива в том порядке, в котором соответствующие им элементы образуют возрастающую последовательность.'
  p @array
  p (0...@array.size).sort_by { |i| @array[i] }
  horizontal_line_separator
end

def task_33
  p 'Дан целочисленный массив. Найти индекс минимального элемента.'
  p @array
  p @array.index(@array.min)
  horizontal_line_separator
end

def task_34
  p 'Дан целочисленный массив. Найти индекс максимального элемента.'
  p @array
  p @array.index(@array.max)
  horizontal_line_separator
end

def task_35
  p 'Дан целочисленный массив. Найти индекс первого минимального элемента.'
  p @array
  p @array.index(@array.min)
  horizontal_line_separator
end

def task_36
  p 'Дан целочисленный массив. Найти индекс первого максимального элемента.'
  p @array
  p @array.index(@array.max)
  horizontal_line_separator
end

def task_37
  p 'Дан целочисленный массив. Найти индекс последнего минимального элемента.'
  p @array
  p @array.rindex(@array.min)
  horizontal_line_separator
end

def task_38
  p 'Дан целочисленный массив. Найти индекс последнего максимального элемента.'
  p @array
  p @array.rindex(@array.max)
  horizontal_line_separator
end

def task_39
  p 'Дан целочисленный массив. Найти количество минимальных элементов.'
  p @array
  p @array.count { |el| el == @array.min }
  horizontal_line_separator
end

def task_40
  p 'Дан целочисленный массив. Найти количество максимальных элементов.'
  p @array
  p @array.count { |el| el == @array.max }
  horizontal_line_separator
end

def task_41
  p 'Дан целочисленный массив. Найти минимальный четный элемент.'
  p @array
  p @array.find_all(&:even?).min
  horizontal_line_separator
end

def task_42
  p 'Дан целочисленный массив. Найти минимальный нечетный элемент.'
  p @array.find_all(&:odd?).min
  horizontal_line_separator
end

def task_43
  p 'Дан целочисленный массив. Найти максимальный четный элемент.'
  p @array.find_all(&:even?).max
  horizontal_line_separator
end

def task_44
  p 'Дан целочисленный массив. Найти максимальный нечетный элемент.'
  p @array
  p @array.find_all(&:odd?).max
  horizontal_line_separator
end

def task_45
  p 'Дан целочисленный массив. Найти минимальный положительный элемент.'
  p @array
  p @array.select(&:positive?).min
  horizontal_line_separator
end

def task_46
  p 'Дан целочисленный массив. Найти максимальный отрицательный элемент.'
  p @array
  p @array.select(&:negative?).max
  horizontal_line_separator
end

def task_47
  p 'Дан целочисленный массив и интервал a..b. Найти минимальный из элементов в этом интервале.'
  p @array
  p @array.select { |el| (@array[a..b]).include?(el) }.min
  horizontal_line_separator
end

def task_48
  p 'Дан целочисленный массив и интервал a..b. Найти максимальный из элементов в этом интервале.'
  p @array
  p @array.select { |el| (@array[a..b]).include?(el) }.max
  horizontal_line_separator
end

def task_49
  p 'Дан целочисленный массив. Найти количество элементов, расположенных перед первым минимальным.'
  p @array
  p @array[0...@array.index(@array.min)].size
  horizontal_line_separator
end

def task_50
  p 'Дан целочисленный массив. Найти количество элементов, расположенных перед первым максимальным.'
  p @array
  p @array[0...@array.index(@array.max)].size
  horizontal_line_separator
end

def task_51
  p 'Дан целочисленный массив. Найти количество элементов, расположенных после первого максимального.'
  p @array
  array_temp = []
  max = @array.index(@array.max)
  @array.each_with_index { |el, i| array_temp << el if i > max }
  p array_temp.size
  horizontal_line_separator
end

def task_52
  p 'Дан целочисленный массив. Найти количество элементов, расположенных после первого минимального.'
  p @array
  array_temp = []
  min = @array.index(@array.min)
  @array.each_with_index { |el, i| array_temp << el if i > min }
  p array_temp.size
  horizontal_line_separator
end

def task_61
  p 'Дан целочисленный массив. Найти два наибольших элемента.'
  p @array
  p @array.max(2)
  horizontal_line_separator
end

def task_62
  p 'Дан целочисленный массив. Найти два наименьших элемента.'
  p @array
  p @array.min(2)
  horizontal_line_separator
end

def task_77
  p 'Дано целое число. Найти сумму его цифр.'
  number = gets.chomp
  number.digits.sum
  horizontal_line_separator
end

def task_86
  p 'Дан целочисленный массив. Найти среднее арифметическое его элементов.'
  p @array
  mean = @array.sum / @array.size
  p mean
  horizontal_line_separator
end

def task_87
  p 'Дан целочисленный массив. Найти все четные элементы.'
  p @array
  even = @array.find_all(&:even?)
  p even
  horizontal_line_separator
end

def task_88
  p 'Дан целочисленный массив. Найти количество четных элементов.'
  p @array
  even = @array.find_all(&:even?)
  p even.count
  horizontal_line_separator
end

def task_89
  p 'Дан целочисленный массив. Найти все нечетные элементы.'
  p @array
  odd  = @array.find_all(&:odd?)
  p odd
  horizontal_line_separator
end

def task_90
  p 'Дан целочисленный массив. Найти количество нечетных элементов.'
  p @array
  odd  = @array.find_all(&:odd?)
  p odd.count
  horizontal_line_separator
end






# task_1
# task_2
# task_3
# task_4
# task_9
# task_10
# task_11
# task_12
# task_13
# task_14
# task_17
# task_18
# task_19
# task_20
# task_25
# task_26
# task_27
# task_28
# task_29
# task_30
# task_31
# task_32
task_33
# task_34
# task_35
# task_36
# task_37
# task_38
# task_39
# task_40
# task_41
# task_42
# task_43
# task_44
# task_45
# task_46
# task_47
# task_48
# task_49
# task_50
# task_51
# task_52
# task_61
# task_62
# task_77
# task_86
# task_87
# task_88
# task_89
# task_90
