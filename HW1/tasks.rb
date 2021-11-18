def num1
  p 'Дан целочисленный массив. Необходимо вывести вначале его элементы с четными индексами, а затем - с нечетными.'
  array = [8, 12, 31, 17, 0]
  p 'array.find_all { |i| i % 2 == 0 }'
  p 'array.reject   { |i| i % 2 == 0 }'
  p array.find_all { |i| i % 2 == 0 }
  p array.reject   { |i| i % 2 == 0 }
end
num1
p '----------------'

def num2
  p 'Дан целочисленный массив. Необходимо вывести вначале его элементы с нечетными индексами, а затем - четными.'
  array = [8, 12, 31, 17, 0]
  p 'array.reject   { |i| i % 2 == 0 }'
  p 'array.find_all { |i| i % 2 == 0 }'
  p array.reject   { |i| i % 2 == 0 }
  p array.find_all { |i| i % 2 == 0 }
end
num2
p '----------------'

def num3
  p 'Дан целочисленный массив. Вывести номер первого из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ].'
  array = [14, 10, 11, 15, 13, 17, 19]
  n = array.find_index { |i| array[0] < i && i < array[-1] }
  puts n || '[]'
end
num3
p '----------------'

