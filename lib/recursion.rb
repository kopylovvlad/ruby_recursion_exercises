# frozen_string_literal: true

# https://habr.com/post/275813/
module Recursion
  # A
  # Дано натуральное число number2. Выведите все числа от 1 до number2.
  module Task1
    def self.fill_str(ind, number)
      # exit
      return number.to_s if ind == number

      # step
      ind.to_s + ' ' + fill_str(ind + 1, number)
    end

    def self.call(number)
      fill_str(1, number)
    end
  end

  # B
  # Даны два целых числа A и В (каждое в отдельной строке).
  # Выведите все числа от A до B включительно, в порядке возрастания,
  # если A < B, или в порядке убывания в противном случае.
  module Task2
    def self.fill_str(min, max)
      return min.to_s if min == max
      min.to_s + ' ' + fill_str(min + 1, max)
    end

    def self.call(number1, number2)
      args = [number1, number2]
      str = fill_str(args.min, args.max)
      if number1 == args.min
        str
      else
        str.reverse
      end
    end
  end

  # C
  # В теории вычислимости важную роль играет функция Аккермана A(number1,number2),
  # определенная следующим образом:
  # https://habrastorage.org/getpro/habr/post_images/08a/e0e/440/08ae0e440965a8ae27b331a8a044116a.png                                                                                            image
  # Даны два целых неотрицательных числа number1 и number2,
  # каждое в отдельной строке. Выведите A(number1,number2).
  module Task3
    def self.call(number1, number2)
      if number1.zero?
        number2 + 1
      elsif number1.positive? and number2.zero?
        call(number1 - 1, 1)
      elsif number1.positive? and number2.positive?
        call(number1 - 1, call(number1, number2 - 1))
      end
    end
  end

  # D
  # Дано натуральное число N.
  # Выведите слово YES, если число N является точной степенью двойки,
  # или слово NO в противном случае.
  # Операцией возведения в степень пользоваться нельзя!
  module Task4
    def self.calculate(number, index = 1)
      result = Array.new(index, 2).reduce(:*)
      if number == result
        true
      elsif number < result
        false
      else
        calculate(number, index + 1)
      end
    end

    def self.call(number)
      calculate(number) ? 'YES' : 'NO'
    end
  end

  # E
  # Дано натуральное число N. Вычислите сумму его цифр.
  # При решении этой задачи нельзя использовать строки,
  # списки, массивы (ну и циклы, разумеется).
  module Task5
    def self.call(number, index = 1, sum = 0)
      int = ((number % (10 * index)) / (1 * index)).floor

      if int.zero?
        return sum
      else
        call(number, index * 10, sum + int)
      end
    end
  end

  # F
  # Дано натуральное число N.
  # Выведите все его цифры по одной, в обратном порядке,
  # разделяя их пробелами или новыми строками.
  # При решении этой задачи нельзя использовать строки,
  # списки, массивы (ну и циклы, разумеется).
  # Разрешена только рекурсия и целочисленная арифметика.
  module Task6
    def self.call(number)
      return number.to_s if number <= 10

      (number % 10).to_s + ' ' + call((number / 10).floor)
    end
  end

  # G
  # Дано натуральное число N.
  # Выведите все его цифры по одной, в обычном порядке,
  # разделяя их пробелами или новыми строками.
  # При решении этой задачи нельзя использовать строки,
  # списки, массивы (ну и циклы, разумеется).
  # Разрешена только рекурсия и целочисленная арифметика.
  module Task7
    def self.call(number)
      return number.to_s if number < 10
      number_length = Math.log(number.abs + 0.5, 10).ceil
      divisor = 10**(number_length - 1)

      (number / divisor).floor.to_s + ' ' + call(number % divisor)
    end
  end

  # H
  # Дано натуральное число n>1.
  # Проверьте, является ли оно простым.
  # Программа должна вывести слово YES, если число простое и
  # NO, если число составное.
  # Алгоритм должен иметь сложность O(log n).
  # Указание. Понятно, что задача сама по себе нерекурсивна,
  # т.к. проверка числа n на простоту никак не сводится
  # к проверке на простоту меньших чисел.
  # Поэтому нужно сделать еще один параметр рекурсии:
  # делитель числа, и именно по этому параметру
  # и делать рекурсию.
  module Task8
    def self.call(number)
      recursion(number, 2)
    end

    def self.recursion(number, index)
      if number == 2
        true
      elsif number < 2 || (number % index).zero?
        false
      elsif index < number / 2
        recursion(number, index + 1)
      else
        true
      end
    end
  end


  # I
  # Дано натуральное число n>1.
  # Выведите все простые множители этого числа в порядке неубывания
  # с учетом кратности.
  # Алгоритм должен иметь сложность O(log n).
  module Task9;
    def self.call(number)
      recursion(number, 2)
    end

    def self.recursion(number, index)
      # exit
      return number.to_s if index > number / 2

      # step
      if (number % index).zero?
        return index.to_s + ' ' + recursion(number / index, index)
      else
        recursion(number, index + 1);
      end
    end
  end


  # J
  # Дано слово, состоящее только из строчных латинских букв.
  # Проверьте, является ли это слово палиндромом.
  # Выведите YES или NO.
  # При решении этой задачи нельзя пользоваться циклами.
  module Task10
    def self.call(string, index = 0)
      return true if string.size == 1
      return false if string[-1 + index] != string[0 - index]
      return true if index > string.size / 2

      call(string, index + 1)
    end
  end


  # K
  # Дана последовательность натуральных чисел (одно число в строке),
  # завершающаяся числом 0.
  # Выведите все нечетные числа из этой последовательности, сохраняя их порядок.
  # В этой задаче нельзя использовать глобальные переменные и
  # передавать какие-либо параметры в рекурсивную функцию.
  module Task11
    def self.call(numbers)
      return '' if numbers.size.zero?
      number = numbers.shift

      return call(numbers) if (number % 2).zero?
      number.to_s + ' ' + call(numbers)
    end
  end

  # L
  # Дана последовательность натуральных чисел (одно число в строке)
  # Выведите первое, третье, пятое и т.д. из введенных чисел.
  # В этой задаче нельзя использовать глобальные переменные
  module Task12
    def self.call(numbers)
      # exit
      return '' if numbers.size.zero?

      # step
      number1 = numbers.shift
      numbers.shift
      number1.to_s + ' ' + call(numbers)
    end
  end

  # M
  # Дана последовательность натуральных чисел (одно число в строке),
  # завершающаяся числом 0.
  # Определите наибольшее значение числа в этой последовательности.
  module Task13
    def self.call(numbers)
      return 0 if numbers.size.zero?

      number = numbers.shift
      [number, call(numbers)].max
    end
  end

  # N
  # Дана последовательность натуральных чисел (одно число в строке),
  # завершающаяся числом 0.
  # Определите среднее значение элементов этой последовательности
  # (без учета последнего нуля).
  module Task14
    def self.call(numbers, sum = 0, index = 1)
      sum += numbers[index - 1]

      return (sum / index.to_f).round(1) if index == numbers.size
      call(numbers, sum, index + 1)
    end
  end


  # O
  # Дана последовательность натуральных чисел (одно число в строке),
  # завершающаяся числом 0.
  # Определите значение второго по величине элемента
  # в этой последовательности, то есть элемента,
  # который будет наибольшим,
  # если из последовательности удалить наибольший элемент.
  module Task15
    def self.call(numbers, max1 = 0, max2 = 0)
      return max2 if numbers.size.zero?

      number = numbers.shift
      if number >= max1
        max2 = max1
        max1 = number
      end
      call(numbers, max1, max2)
    end
  end

  # P
  # Дана последовательность натуральных чисел (одно число в строке),
  # завершающаяся числом 0.
  # Определите, какое количество элементов этой последовательности,
  # равны ее наибольшему элементу.
  module Task16
    def self.call(numbers, max = 0, times = 0)
      return times if numbers.size.zero?

      number = numbers.shift
      if number > max
        max = number
        times = 1
      elsif number == max
        times += 1
      end
      call(numbers, max, times)
    end
  end

  # Q
  # Дана последовательность натуральных чисел (одно число в строке),
  # завершающаяся двумя числами 0 подряд.
  # Определите, сколько раз в этой последовательности встречается число 1.
  module Task17
    def self.call(numbers, times = 0)
      return times if numbers.size.zero?

      times += 1 if numbers.shift == 1
      call(numbers, times)
    end
  end

  # R
  # Дана монотонная последовательность,
  # в которой каждое натуральное число k встречается ровно k раз:
  # 1, 2, 2, 3, 3, 3, 4, 4, 4, 4,…
  # По данному натуральному n выведите первые n членов этой последовательности.
  # Попробуйте обойтись только одним циклом for.
  module Task18
    def self.call(number)
      recursion(number)
    end

    def self.recursion(number)
      return '' if number <= 0
      return '1' if number == 1

      sum = 0
      i = 0
      j = 0

      while sum < number
        sum += i
        j = i
        i += 1
      end

      recursion(number - 1).to_s + ' ' + j.to_s
    end
  end

  # S
  # Даны натуральные числа k и s.
  # Определите, сколько существует k-значных натуральных чисел,
  # сумма цифр которых равна d.
  # Запись натурального числа не может начинаться с цифры 0.
  # В этой задаче можно использовать цикл для перебора всех цифр,
  # стоящих на какой-либо позиции.
  module Task19
    def self.call(k, s, len = 0, sum = 0)
      return sum == s ? 1 : 0 if len == k

      res = 0
      i = (len.zero? ? 1 : 0)
      while i < 10
        res += call(k, s, len + 1, sum + i)
        i += 1
      end
      res
    end
  end

  # T
  # Даны числа a и b.
  # Определите, сколько существует последовательностей из a нулей и b единиц,
  # в которых никакие два нуля не стоят рядом.
  module Task20
    def self.call(a, b)
      # exit
      return 0 if a > b + 1
      return 1 if a.zero? || b.zero?

      # step
      call(a, b - 1) + call(a - 1, b - 1)
    end
  end

  # U
  # Дано число n, десятичная запись которого не содержит нулей.
  # Получите число, записанное теми же цифрами,
  # но в противоположном порядке.
  # При решении этой задачи нельзя использовать циклы, строки, списки, массивы,
  # разрешается только рекурсия и целочисленная арифметика.
  module Task21
    def self.call(number)
      # exit
      return number if number < 10

      # step
      number_length = Math.log(number.abs + 0.5, 10).ceil
      (number % 10) * (10**(number_length - 1)) + call(number / 10).floor
    end
  end
end
