# frozen_string_literal: true

module Recursion
  module TaskA
    def self.call(number, index = 1)
      # exit
      return number.to_s if index == number

      # step
      index.to_s + ' ' + call(number, index + 1)
    end
  end

  module TaskB
    def self.call(number1, number2)
      # exit
      return number1.to_s if number1 == number2

      # step
      new_number = number1 > number2 ? number1 - 1 : number1 + 1
      number1.to_s + ' ' + call(new_number, number2)
    end
  end


  module TaskC
    def self.call(number1, number2)
      # exit
      return number2 + 1 if number1.zero?

      # step
      if number2.zero?
        call(number1 - 1, 1)
      elsif number2.positive?
        call(number1 - 1, call(number1, number2 - 1))
      end
    end
  end


  module TaskD
    def self.call(number, index = 1)
      result = Array.new(index, 2).reduce(:*)

      # exit
      return true if number == result
      return false if number < result

      # step
      call(number, index + 1)
    end
  end


  module TaskE
    def self.call(number, index = 1, sum = 0)
      int = ((number % (10 * index)) / (1 * index)).floor

      # exit
      return sum if int.zero?

      # step
      call(number, index * 10, sum + int)
    end
  end


  module TaskF
    def self.call(number)
      # exit
      return number.to_s if number <= 10

      # step
      (number % 10).to_s + ' ' + call((number / 10).floor)
    end
  end


  module TaskG
    def self.call(number)
      # exit
      return number.to_s if number < 10

      # step
      divisor = 10**(Math.log(number.abs + 0.5, 10).ceil - 1)
      (number / divisor).floor.to_s + ' ' + call(number % divisor)
    end
  end


  module TaskH
    def self.call(number, index = 2)
      # exit
      return true if number == 2
      return false if number < 2 || (number % index).zero?
      return true if index >= number / 2

      # step
      call(number, index + 1)
    end
  end


  module TaskI
    def self.call(number, index = 2)
      # exit
      return number.to_s if index > number / 2

      # step
      if (number % index).zero?
        index.to_s + ' ' + call(number / index, index)
      else
        call(number, index + 1);
      end
    end
  end


  module TaskJ
    def self.call(string, index = 0)
      # exit
      return true if string.size == 1
      return false if string[-1 + index] != string[0 - index]
      return true if index > string.size / 2

      # step
      call(string, index + 1)
    end
  end


  module TaskK
    def self.call(numbers, result = [])
      # exit
      return result.join(' ') if numbers.size.zero?

      # step
      number = numbers.shift
      result.push(number) unless (number % 2).zero?
      call(numbers, result)
    end
  end


  module TaskL
    def self.call(numbers, result = [])
      # exit
      return result.join(' ') if numbers.size.zero?

      # step
      result.push(numbers.shift)
      numbers.shift
      call(numbers, result)
    end
  end


  module TaskM
    def self.call(numbers)
      # exit
      return 0 if numbers.size.zero?

      # step
      number = numbers.shift
      [number, call(numbers)].max
    end
  end


  module TaskN
    def self.call(numbers, sum = 0, index = 1)
      sum += numbers[index - 1]

      # exit
      return (sum / index.to_f).round(1) if index == numbers.size

      # step
      call(numbers, sum, index + 1)
    end
  end


  module TaskO
    def self.call(numbers, max1 = 0, max2 = 0)
      # exit
      return max2 if numbers.size.zero?

      # step
      number = numbers.shift
      if number >= max1
        max2 = max1
        max1 = number
      end
      call(numbers, max1, max2)
    end
  end


  module TaskP
    def self.call(numbers, max = 0, times = 0)
      # exit
      return times if numbers.size.zero?

      # step
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


  module TaskQ
    def self.call(numbers, times = 0)
      # exit
      return times if numbers.size.zero?

      # step
      times += 1 if numbers.shift == 1
      call(numbers, times)
    end
  end


  module TaskR
    def self.call(number)
      # exit
      return '' if number <= 0
      return '1' if number == 1

      # step
      sum = 0
      i = 0
      j = 0
      while sum < number
        sum += i
        j = i
        i += 1
      end
      call(number - 1).to_s + ' ' + j.to_s
    end
  end


  module TaskS
    def self.call(k, s, len = 0, sum = 0)
      # exit
      return sum == s ? 1 : 0 if len == k

      # step
      res = 0
      i = (len.zero? ? 1 : 0)
      while i < 10
        res += call(k, s, len + 1, sum + i)
        i += 1
      end
      res
    end
  end


  module TaskT
    def self.call(a, b)
      # exit
      return 0 if a > b + 1
      return 1 if a.zero? || b.zero?

      # step
      call(a, b - 1) + call(a - 1, b - 1)
    end
  end


  module TaskU
    def self.call(number)
      # exit
      return number if number < 10

      # step
      number_length = Math.log(number.abs + 0.5, 10).ceil
      (number % 10) * (10**(number_length - 1)) + call(number / 10).floor
    end
  end
end
