@array = [14, -10, 11, 15, -13, 17, -19]
horizontalLine = '----------------'

def task1
  p 'Дан целочисленный массив. Необходимо вывести вначале его элементы с четными индексами, а затем - с нечетными.'
  p '@array.find_all { |i| i % 2 == 0 }
     @array.reject   { |i| i % 2 == 0 }'
  p @array.find_all { |i| i % 2 == 0 }
  p @array.reject   { |i| i % 2 == 0 }
end
task1
p horizontalLine

def task2
  p 'Дан целочисленный массив. Необходимо вывести вначале его элементы с нечетными индексами, а затем - четными.'
  p '@array.reject   { |i| i % 2 == 0 }
     @array.find_all { |i| i % 2 == 0 }'
  p @array.reject   { |i| i % 2 == 0 }
  p @array.find_all { |i| i % 2 == 0 }
end
task2
p horizontalLine

def task3
  p 'Дан целочисленный массив. Вывести номер первого из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ].'
  p 'n = @array.index { |i| @array[0] < i && i < @array[-1] }
     p n || \'[]\''
  n = @array.index { |i| @array[0] < i && i < @array[-1] }
  p n || '[]'
end
task3
p horizontalLine

def task4
  p 'Дан целочисленный массив. Вывести номер последнего из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ].'
  p 'n = @array.index { |i| @array[-1] < i && i < @array[0] }
     p n || \'[]\''
  n = @array.index { |i| @array[-1] < i && i < @array[0] }
  p n || '[]'
end
task4
p horizontalLine

def task9
  p 'Дан целочисленный массив. Заменить все положительные элементы на значение минимального.'
  p 'array_min = @array.min
     n         = @array.map { |i| i.positive? ? array_min : i }
     p n'
  p @array
  array_min = @array.min
  n         = @array.map { |i| i.positive? ? array_min : i }
  p n
end
task9
p horizontalLine

def task10
  p 'Дан целочисленный массив. Заменить все положительные элементы на значение максимального.'
  p 'array_max = @array.max
     n         = @array.map { |i| i.positive? ? array_max : i }
     p n'
  p @array
  array_max = @array.max
  n         = @array.map { |i| i.positive? ? array_max : i }
  p n
end
task10
p horizontalLine

def task11
  p 'Дан целочисленный массив. Заменить все отрицательные элементы на значение минимального.'
  p 'array_min = @array.min
     n         = @array.map { |i| i.negative? ? array_min : i }
     p n'
  p @array
  array_min = @array.min
  n         = @array.map { |i| i.negative? ? array_min : i }
  p n
end
task11
p horizontalLine

def task12
  p 'Дан целочисленный массив. Заменить все отрицательные элементы на значение максимального.'
  p 'array_max = @array.max
     n         = @array.map { |i| i.negative? ? array_max : i }
     p n'
  p @array
  array_max = @array.max
  n         = @array.map { |i| i.negative? ? array_max : i }
  p n
end
task12
p horizontalLine

def task13
  p 'Дан целочисленный массив. Осуществить циклический сдвиг элементов массива влево на одну позицию.'
  p 'p @array.rotate (1)
     # or
     p @array.push(@array.shift)'
  p @array
  p @array.rotate (1)
  # or
  p @array.push(@array.shift)
end
task13
p horizontalLine

def task14
  p 'Дан целочисленный массив. Осуществить циклический сдвиг элементов массива вправо на одну позицию.'
  p 'p @array.rotate(-1)'
  p @array
  p @array.rotate(-1)
end
task14
p horizontalLine

def task29
  p 'Дан целочисленный массив. Упорядочить его по возрастанию.'
  p 'p @array.sort'
  p @array
  p @array.sort
end
task29
p horizontalLine

def task30
  p 'Дан целочисленный массив. Упорядочить его по убыванию.'
  p 'p @array.sort.reverse'
  p @array
  p @array.sort.reverse
end
task30
p horizontalLine

def task31
  p 'Дан целочисленный массив. Вывести индексы массива в том порядке, в котором соответствующие им элементы образуют убывающую последовательность.'
  p 'p (0...@array.size).sort_by { |i| @array[i] }.reverse'
  p @array
  p (0...@array.size).sort_by { |i| @array[i] }.reverse
end
task31
p horizontalLine

def task32
  p 'Дан целочисленный массив. Вывести индексы массива в том порядке, в котором соответствующие им элементы образуют возрастающую последовательность.'
  p 'p (0...@array.size).sort_by { |i| @array[i] }'
  p @array
  p (0...@array.size).sort_by { |i| @array[i] }
end
task32
p horizontalLine

def task33
  p 'Дан целочисленный массив. Найти индекс минимального элемента.'
  p 'p @array.index(@array.min'
  p @array
  p @array.index(@array.min)
end
task33
p horizontalLine

def task34
  p 'Дан целочисленный массив. Найти индекс максимального элемента.'
  p 'p @array.index(@array.max'
  p @array
  p @array.index(@array.max)
end
task34
p horizontalLine

def task37
  p 'Дан целочисленный массив. Найти индекс последнего минимального элемента.'
  p 'p @array.rindex(@array.min'
  p @array
  p @array.rindex(@array.min)
end
task37
p horizontalLine

def task38
  p 'Дан целочисленный массив. Найти индекс последнего максимального элемента.'
  p 'p @array.rindex(@array.max)'
  p @array
  p @array.rindex(@array.max)
end
task38
p horizontalLine

def task41
  p 'Дан целочисленный массив. Найти минимальный четный элемент.'
  p 'p @array.find_all { |i| i % 2 == 0 }.min'
  p @array.find_all { |i| i % 2 == 0 }.min
end
task41
p horizontalLine

def task42
  p 'Дан целочисленный массив. Найти минимальный нечетный элемент.'
  p 'p @array.reject { |i| i % 2 == 0 }.min'
  p @array.reject { |i| i % 2 == 0 }.min
end
task42
p horizontalLine

def task43
  p 'Дан целочисленный массив. Найти максимальный четный элемент.'
  p 'p @array.find_all { |i| i % 2 == 0 }.max'
  p @array.find_all { |i| i % 2 == 0 }.max
end
task43
p horizontalLine

def task44
  p 'Дан целочисленный массив. Найти максимальный нечетный элемент.'
  p 'p @array.reject { |i| i % 2 == 0 }.max'
  p @array.reject { |i| i % 2 == 0 }.max
end
task44
p horizontalLine

def task45
  p 'Дан целочисленный массив. Найти минимальный положительный элемент.'
  p 'p @array.select { |i| i >= 0 }.min'
  p @array
  p @array.select { |i| i >= 0 }.min
end
task45
p horizontalLine

def task46
  p 'Дан целочисленный массив. Найти минимальный положительный элемент.'
  p 'p @array.select { |i| i < 0 }.max'
  p @array
  p @array.select { |i| i < 0 }.max
end
task46
p horizontalLine

def task47
  p 'Дан целочисленный массив и интервал a..b. Найти минимальный из элементов в этом интервале.'
  p 'range  = (-16..21)
     array2 = @array & range.to_a
     number = array2.min
     p number'
  p @array
  range  = (-16..21)
  array2 = @array & range.to_a
  number = array2.min
  p number
end
task47
p horizontalLine

def task48
  p 'Дан целочисленный массив и интервал a..b. Найти максимальный из элементов в этом интервале.'
  p 'range  = (-16..21)
     array2 = @array & range.to_a
     number = array2.max
     p number'
  p @array
  range  = (-16..21)
  array2 = @array & range.to_a
  number = array2.max
  p number
end
task48

# 26 TASKS