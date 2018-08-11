# frozen_string_literal: true

# https://habr.com/post/275813/
module Recursion
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

  # Дано натуральное число N.
  # Выведите все его цифры по одной, в обычном порядке,
  # разделяя их пробелами или новыми строками.
  # При решении этой задачи нельзя использовать строки,
  # списки, массивы (ну и циклы, разумеется).
  # Разрешена только рекурсия и целочисленная арифметика.
  module Task7
    def self.call(number)

    end
  end
end
