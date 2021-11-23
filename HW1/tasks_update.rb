# frozen_string_literal: true

@array = [-3, -2, 2, -1, 0, 1, 2]

def horizontal_line_separator
  p '-------------------------------------------'
end

def task_17
  p 'Дан целочисленный массив. Найти количество его локальных максимумов.'
  p @array
  count_local_max = @array.count(@array.max)
  p "Count of local maximum: #{count_local_max}"
  horizontal_line_separator
end

def task_18
  p 'Дан целочисленный массив. Найти количество его локальных минимумов.'
  p @array
  count_local_min = @array.count(@array.min)
  p "Count of local minimum: #{count_local_min}"
  horizontal_line_separator
end

def task_19
  p 'Дан целочисленный массив. Найти максимальный из его локальных максимумов.'
  p @array
  maximum_of_local_maxima = @array.max
  p maximum_of_local_maxima
  horizontal_line_separator
end

def task_20
  p 'Дан целочисленный массив. Найти минимальный из его локальных минимумов.'
  p @array
  minimum_of_local_minima = @array.min
  p minimum_of_local_minima
  horizontal_line_separator
end

def task_25 # Был сделан правильно, но вместо нужного map! исаользовал map
  p 'Дан целочисленный массив. Преобразовать его, вставив перед каждым положительным элементом нулевой элемент.'
  p @array
  p @array.map! { |el| el.positive? ? [@array.first, el] : el }.flatten
  horizontal_line_separator
end

def task_26 # Был сделан правильно, но вместо нужного map! исаользовал map
  p 'Дан целочисленный массив. Преобразовать его, вставив перед каждым отрицательным элементом нулевой элемент.'
  p @array
  p @array.map! { |el| el.negative? ? [@array.first, el] : el }.flatten
  horizontal_line_separator
end

def task_27 # Был сделан правильно, но вместо нужного map! исаользовал map
  p 'Дан целочисленный массив. Преобразовать его, вставив после каждого положительного элементом нулевой элемент.'
  p @array
  p @array.map! { |el| el.positive? ? [el, @array.first] : el }.flatten
  horizontal_line_separator
end

def task_28 # Был сделан правильно, но вместо нужного map! исаользовал map
  p 'Дан целочисленный массив. Преобразовать его, вставив после каждого отрицательного элементом нулевой элемент.'
  p @array
  p @array.map! { |el| el.negative? ? [el, @array.first] : el }.flatten
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

def task_42
  p 'Дан целочисленный массив. Найти минимальный нечетный элемент.'
  p @array.find_all.min
  horizontal_line_separator
end

def task_47
  p 'Дан целочисленный массив и интервал a..b. Найти минимальный из элементов в этом интервале.'
  p @array
  range  = (-16..21)
  array2 = @array & range.to_a
  min_element_in_range = array2.min
  p min_element_in_range
  horizontal_line_separator
end

def task_48
  p 'Дан целочисленный массив и интервал a..b. Найти максимальный из элементов в этом интервале.'
  p @array
  range  = (-16..21)
  array2 = @array & range.to_a
  max_element_in_range = array2.max
  p max_element_in_range
  horizontal_line_separator
end

def task_49
  p 'Дан целочисленный массив. Найти количество элементов, расположенных перед первым минимальным.'
  p @array
  count_before_min = []
  @array.each_with_index do |el, i|
    count_before_min << el if i < @array.index(@array.min)
  end
  p count_before_min.size.to_s
  horizontal_line_separator
end

def task_50
  p 'Дан целочисленный массив. Найти количество элементов, расположенных перед первым максимальным.'
  p @array
  count_before_max = []
  @array.each_with_index do |el, i|
    count_before_max << el if i < @array.index(@array.max)
  end
  p count_before_max.size.to_s
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

def task_77 # не знаю, что далать, если число будет 4х+ значным, поэтому сделал, как знал.
  p 'Дано целое число. Найти сумму его цифр.'
  number = rand(1..999)
  p number
  a = number / 100
  b = number / 10 % 10
  c = number % 10
  p a + b + c
  horizontal_line_separator
end

def task_86 # done
  p 'Дан целочисленный массив. Найти среднее арифметическое его элементов.'
  p @array
  mean = (@array.sum / @array.size).to_f
  p mean
  horizontal_line_separator
end



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
# task_42
# task_47
# task_48

# Выполнено
# task_49
# task_50
# task_61
# task_62
# task_86

# Не знаю как сделать
# task_77

