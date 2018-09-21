# Ruby recursion exercises with examples

Here is some exercises for programming practice.

Original post: [link(russian)](https://habr.com/post/275813/)

## Tasks

### Task A

#### ru:
Дано натуральное число number. Выведите все числа от 1 до number.

#### eng:
You were given a natural number ‘number’.
Return a string with all numbers from 1 to 'number' using recursion.
You can divide each digit by spaces or new lines.


### Task B

#### ru:
Даны два целых числа number1 и number2.
Выведите все числа от number1 до number2 включительно, в порядке возрастания,
если number1 < number1, или в порядке убывания в противном случае.
  
#### eng:
You were given two numbers 'number1' and 'number2'.
If 'number1' < 'number2', return a string with all numbers
from 'number1' to 'number2' including them.
Otherwise, return a string with all numbers from ‘number1’ to ‘number2’ in descending order.


### Task C

#### ru:
В теории вычислимости важную роль играет функция Аккермана A(number1,number2), определенная следующим образом:
[link](https://wikimedia.org/api/rest_v1/media/math/render/svg/1a15ea2fcf1977e497bccdf1916ae23edc412fff)
Даны два целых неотрицательных числа number1 и number2, каждое в отдельной строке.
Выведите A(number1,number2).

#### eng:
You were given two integers 'number1' and 'number2'.
Implement Ackermann function A(number1,number2) using recursion.
https://wikimedia.org/api/rest_v1/media/math/render/svg/1a15ea2fcf1977e497bccdf1916ae23edc412fff


### Task D

#### ru:
Дано натуральное число 'number'.
Выведите true, если число 'number' является точной степенью двойки,
или false в противном случае.
Операцией возведения в степень пользоваться нельзя!

#### eng:
You were given a natural number 'number'.
Write a function that returns true if 'number' is a power of two.
You should not use the exponentiation operator!


### Task E

#### ru:
Дано натуральное число number. Вычислите сумму его цифр.
При решении этой задачи нельзя использовать строки, списки, массивы (ну и циклы, разумеется).
  
#### eng:
You were given a natural 'number'. Calculate the sum of its digits.
You should not use string, array or loops.


### Task F

#### ru:
Дано натуральное число number.
Выведите все его цифры по одной, в обратном порядке, разделяя их пробелами или новыми строками.
При решении этой задачи нельзя использовать строки, списки, массивы (ну и циклы, разумеется).
Разрешена только рекурсия и целочисленная арифметика.

#### eng:
You were given a natural number 'number'. Return all its digits one by one in reverse order separating them by spaces or new lines
You should not use string, array or loops. Use only recursion and arithmetic operators.


### Task G

#### ru:
Дано натуральное число number.
Выведите все его цифры по одной, в обычном порядке, разделяя их пробелами или новыми строками.
При решении этой задачи нельзя использовать строки, списки, массивы (ну и циклы, разумеется).
Разрешена только рекурсия и целочисленная арифметика.

#### eng:
You were given a natural number 'number'.
Return all its digits one by one in initial order separating them by spaces or new lines
You should not use string, array or loops.
Use only recursion and arithmetic operators.


### Task H

#### ru:
Дано натуральное число number (number>1).
Проверьте, является ли оно простым.
Программа должна вывести true, если число простое и false, если число составное.
Алгоритм должен иметь сложность O(log n).
Указание: Понятно, что задача сама по себе нерекурсивна, т.к. проверка числа n на простоту никак не сводится
к проверке на простоту меньших чисел.
Поэтому нужно сделать еще один параметр рекурсии: делитель числа, и именно по этому параметру и делать рекурсию.

#### eng:
You were given a natural number 'number' (number > 1).
Check if 'number' is a prime number or not.
The function should return true, if 'number' is  prime, and return false, if 'number' is not prime.
The algorithm should have time complexity O(log n).
Hint: you should add one argument to the function as a divisor.


### Task I

#### ru:
Дано натуральное число number (number>1).
Выведите все простые множители этого числа в порядке возрастания с учетом кратности.
Алгоритм должен иметь сложность O(log n).

#### eng:
You were given a natural number 'number' (number > 1).
Check if 'number' is a prime number or not.
The function should return true, if 'number' is  prime, and return false, if 'number' is not prime.
The algorithm should have time complexity O(log n).
Hint: you should add one argument to the function as a divisor.


### Task J

#### ru:
Дано слово, состоящее только из строчных латинских букв.
Проверьте, является ли это слово палиндромом. Выведите true или false.
При решении этой задачи нельзя пользоваться циклами.

#### eng:
You were given a word consisting only of lowercase latin letters.
Check if the word is a palindrome.
The function should return true or false.
You should not use loops.


### Task K

#### ru:
Дана последовательность натуральных чисел (одно число в строке).
Выведите все нечетные числа из этой последовательности, сохраняя их порядок.
В этой задаче нельзя использовать глобальные переменные.
  
#### eng:
You were given a sequence of natural numbers (that should look like one number in a string).
Return all odd numbers from this sequence keeping their initial order.
You should not use global variables.


### Task L

#### ru:
Дана последовательность натуральных чисел.
Выведите первое, третье, пятое и т.д. из введенных чисел.
В этой задаче нельзя использовать глобальные переменные

#### eng:
You were given a sequence of numbers.
Return the first, third, fifth etc. numbers from the sequence.
You should not use global variables.


### Task M

#### ru:
Дана последовательность натуральных чисел.
Определите наибольшее значение числа в этой последовательности.

#### eng:
You were given a sequence of - natural numbers.
Return the biggest number from the sequence.


### Task N

#### ru:
Дана последовательность натуральных чисел.
Определите среднее значение элементов этой последовательности.

#### eng:
You were given a sequence of natural numbers.
Return the average of the sequence elements.


### Task O

#### ru:
Дана последовательность натуральных чисел.
Определите значение второго по величине элемента в этой последовательности, то есть элемента, который будет наибольшим, если из последовательности удалить наибольший элемент.

#### eng:
You were given a sequence of natural numbers.
Return the value of the second biggest number.


### Task P

#### ru:
Дана последовательность натуральных чисел.
Определите, какое количество элементов этой последовательности, равны ее наибольшему элементу.

#### eng:
You were given a sequence of natural numbers.
Return the number of elements which are equal to the largest number in this sequence.


### Task Q

#### ru:
Дана последовательность натуральных чисел.
Определите, сколько раз в этой последовательности встречается число 1.

#### eng:
You were given a sequence of natural numbers.
Return the number of times “1” occurs in the sequence


### Task R

#### ru:
Дана монотонная последовательность, в которой каждое натуральное число k встречается ровно k раз:
1, 2, 2, 3, 3, 3, 4, 4, 4, 4,...
По данному натуральному n выведите первые n членов этой последовательности.
Попробуйте обойтись только одним циклом for.

#### eng:
You were given a monotonic sequence in which every natural number 'k' occurs exactly k-times: 1, 2, 2, 3, 3, 3, 4, 4, 4, 4,...
Write a function that returns first n elements of this sequence by given a natural number n. 
Try to use no more than one loop.


### Task S

#### ru:
Даны натуральные числа k и s.
Определите, сколько существует k-значных натуральных чисел, сумма цифр которых равна d.
Запись натурального числа не может начинаться с цифры 0.
В этой задаче можно использовать цикл для перебора всех цифр, стоящих на какой-либо позиции.

#### eng:
You were given two  natural numbers 'k' and 's'.
Determine how many k-digit natural numbers exist, the sum of the digits of which is 'd'.
A natural number can not begin with a digit 0.
In this task, you can use a loop to iterate through all the digits at any position.


### Task T

#### ru:
Даны числа a и b.
Определите, сколько существует последовательностей из a нулей и b единиц, в которых никакие два нуля не стоят рядом.

#### eng:
You were given two  numbers 'a' and 'b'.
Determine how many sequences there are,  from 'a' zeros and 'b' units, in which two zeros do not occur next to each other.


### Task U

#### ru:
Дано число number, десятичная запись которого не содержит нулей.
Получите число, записанное теми же цифрами, но в противоположном порядке.
При решении этой задачи нельзя использовать циклы, строки, списки, массивы, разрешается только рекурсия и целочисленная арифметика.

#### eng:
You were given a number 'number'. Its decimal representation does not contain zeros.
Return a  number represented by the same digits but in reverse order.
You should not use loops, string or array.
Use only recursion and arithmetic operators.


## CODE
Course code in lib/recursion.rb.
Tests in rspec/recursion_spec.rb

## Usage
```bash
bundle install;
rspec spec/
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kopylovvlad/ruby_recursion_exercises. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Recursion project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/recursion/blob/master/CODE_OF_CONDUCT.md).
