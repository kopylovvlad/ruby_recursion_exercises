# frozen_string_literal: true

RSpec.describe Recursion do
  describe 'Task A' do
    let(:item) { Recursion::TaskA }
    it 'should work' do
      expect(item.call(1)).to eq('1')
      expect(item.call(2)).to eq('1 2')
      expect(item.call(3)).to eq('1 2 3')
      expect(item.call(4)).to eq('1 2 3 4')
    end
  end

  describe 'Task B' do
    let(:item) { Recursion::TaskB }
    it 'should work' do
      expect(item.call(0, 4)).to eq('0 1 2 3 4')
      expect(item.call(2, 5)).to eq('2 3 4 5')
      expect(item.call(8, 4)).to eq('8 7 6 5 4')
    end
  end

  describe 'Task C' do
    let(:item) { Recursion::TaskC }
    it 'should work' do
      expect(item.call(0, 2)).to eq(3)
      expect(item.call(0, 9)).to eq(10)
      expect(item.call(3, 2)).to eq(29)
    end
  end

  describe 'Task D' do
    let(:item) { Recursion::TaskD }
    it 'should work' do
      expect(item.call(0)).to eq(false)
      expect(item.call(1)).to eq(false)
      expect(item.call(2)).to eq(true)
      expect(item.call(3)).to eq(false)
      expect(item.call(4)).to eq(true)
      expect(item.call(5)).to eq(false)
      expect(item.call(6)).to eq(false)
      expect(item.call(7)).to eq(false)
      expect(item.call(8)).to eq(true)
      expect(item.call(1022)).to eq(false)
      expect(item.call(1023)).to eq(false)
      expect(item.call(1024)).to eq(true)
      expect(item.call(1025)).to eq(false)
      expect(item.call(1026)).to eq(false)
    end
  end

  describe 'Task E' do
    let(:item) { Recursion::TaskE }
    it 'should work' do
      expect(item.call(0)).to eq(0)
      expect(item.call(1)).to eq(1)
      expect(item.call(3)).to eq(3)
      expect(item.call(12)).to eq(3)
      expect(item.call(42)).to eq(6)
      expect(item.call(123)).to eq(6)
      expect(item.call(852)).to eq(15)
      expect(item.call(1853)).to eq(17)
    end
  end

  describe 'Task F' do
    let(:item) { Recursion::TaskF }
    it 'should work' do
      expect(item.call(0)).to eq('0')
      expect(item.call(5)).to eq('5')
      expect(item.call(12)).to eq('2 1')
      expect(item.call(71)).to eq('1 7')
      expect(item.call(123)).to eq('3 2 1')
      expect(item.call(961)).to eq('1 6 9')
    end
  end

  describe 'Task G' do
    let(:item) { Recursion::TaskG }
    it 'should work' do
      expect(item.call(0)).to eq('0')
      expect(item.call(5)).to eq('5')
      expect(item.call(12)).to eq('1 2')
      expect(item.call(71)).to eq('7 1')
      expect(item.call(123)).to eq('1 2 3')
      expect(item.call(961)).to eq('9 6 1')
    end
  end

  describe 'Task H' do
    let(:item) { Recursion::TaskH }
    let(:numbers) do
      [
        2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53,
        59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113,
        127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181,
        191, 193, 197, 199
      ]
    end

    it 'should work' do
      numbers.each do |number|
        expect(item.call(number)).to eq(true)
      end
    end

    it 'should not work' do
      (Array(1..200) - numbers).each do |number|
        expect(item.call(number)).to eq(false)
      end
    end
  end

  describe 'Task I' do
    let(:item) { Recursion::TaskI }
    it 'should work' do
      expect(item.call(2)).to eq('2')
      expect(item.call(5)).to eq('5')
      expect(item.call(6)).to eq('2 3')
      expect(item.call(10)).to eq('2 5')
      expect(item.call(12)).to eq('2 2 3')
      expect(item.call(13)).to eq('13')
      expect(item.call(18)).to eq('2 3 3')
      expect(item.call(25)).to eq('5 5')
      expect(item.call(336)).to eq('2 2 2 2 3 7')
    end
  end

  describe 'Task J' do
    let(:item) { Recursion::TaskJ }
    it 'should work' do
      expect(item.call('g')).to eq(true)
      expect(item.call('gg')).to eq(true)
      expect(item.call('ga')).to eq(false)
      expect(item.call('gag')).to eq(true)
      expect(item.call('gab')).to eq(false)
      expect(item.call('abba')).to eq(true)
      expect(item.call('baba')).to eq(false)
      expect(item.call('abcba')).to eq(true)
      expect(item.call('agcba')).to eq(false)
    end
  end

  describe 'Task K' do
    let(:item) { Recursion::TaskK }
    it 'should work' do
      expect(item.call([])).to eq('')
      expect(item.call([2])).to eq('')
      expect(item.call([3])).to eq('3')
      expect(item.call([1, 2])).to eq('1')
      expect(item.call([1, 2, 3])).to eq('1 3')
      expect(item.call([31, 22, 13])).to eq('31 13')
    end
  end

  describe 'Task L' do
    let(:item) { Recursion::TaskL }
    it 'should work' do
      expect(item.call([])).to eq('')
      expect(item.call([1])).to eq('1')
      expect(item.call([2])).to eq('2')
      expect(item.call([1, 2])).to eq('1')
      expect(item.call([3, 2])).to eq('3')
      expect(item.call([1, 2, 3, 4])).to eq('1 3')
      expect(item.call([2, 5, 8, 2, 3, 4, 5])).to eq('2 8 3 5')
    end
  end

  describe 'Task M' do
    let(:item) { Recursion::TaskM }
    it 'should work' do
      expect(item.call([1])).to eq(1)
      expect(item.call([13])).to eq(13)
      expect(item.call([1, 2])).to eq(2)
      expect(item.call([1, 2, 22])).to eq(22)
      expect(item.call([31, 2, 22])).to eq(31)
    end
  end

  describe 'Task N' do
    let(:item) { Recursion::TaskN }
    it 'should work' do
      expect(item.call([1])).to eq(1)
      expect(item.call([22])).to eq(22)
      expect(item.call([1, 1])).to eq(1.0)
      expect(item.call([2, 2])).to eq(2.0)
      expect(item.call([1, 2, 3])).to eq(2.0)
      expect(item.call([1, 10, 20])).to eq(10.3)
    end
  end

  describe 'Task O' do
    let(:item) { Recursion::TaskO }
    it 'should work' do
      expect(item.call([])).to eq(0)
      expect(item.call([2])).to eq(0)
      expect(item.call([22])).to eq(0)
      expect(item.call([1, 2])).to eq(1)
      expect(item.call([1, 2])).to eq(1)
      expect(item.call([1, 1])).to eq(1)
      expect(item.call([1, 2, 3, 4])).to eq(3)
    end
  end

  describe 'Task P' do
    let(:item) { Recursion::TaskP }
    it 'should work' do
      expect(item.call([])).to eq(0)
      expect(item.call([1, 2, 3])).to eq(1)
      expect(item.call([1, 1, 1])).to eq(3)
      expect(item.call([1, 1, 2, 3])).to eq(1)
      expect(item.call([1, 1, 2, 2, 3])).to eq(1)
      expect(item.call([1, 1, 2, 2, 2, 3])).to eq(1)
      expect(item.call([1, 1, 2, 2, 2, 3, 23])).to eq(1)
      expect(item.call([1, 1, 2, 2, 2, 23, 23])).to eq(2)
      expect(item.call([23, 1, 1, 2, 2, 2, 23])).to eq(2)
      expect(item.call([23, 23, 1, 1, 2, 22, 2, 23])).to eq(3)
    end
  end

  describe 'Task Q' do
    let(:item) { Recursion::TaskQ }
    it 'should work' do
      expect(item.call([])).to eq(0)
      expect(item.call([1])).to eq(1)
      expect(item.call([2])).to eq(0)
      expect(item.call([1, 2])).to eq(1)
      expect(item.call([1, 1, 2])).to eq(2)
      expect(item.call([1, 2, 1])).to eq(2)
      expect(item.call([1, 2, 1, 3, 11, 111, 1])).to eq(3)
    end
  end

  describe 'Task R' do
    let(:item) { Recursion::TaskR }
    it 'should work' do
      expect(item.call(0)).to eq('')
      expect(item.call(1)).to eq('1')
      expect(item.call(2)).to eq('1 2')
      expect(item.call(3)).to eq('1 2 2')
      expect(item.call(4)).to eq('1 2 2 3')
      expect(item.call(5)).to eq('1 2 2 3 3')
      expect(item.call(6)).to eq('1 2 2 3 3 3')
      expect(item.call(7)).to eq('1 2 2 3 3 3 4')
      expect(item.call(8)).to eq('1 2 2 3 3 3 4 4')
      expect(item.call(9)).to eq('1 2 2 3 3 3 4 4 4')
      expect(item.call(10)).to eq('1 2 2 3 3 3 4 4 4 4')
      expect(item.call(11)).to eq('1 2 2 3 3 3 4 4 4 4 5')
    end
  end

  describe 'Task S' do
    let(:item) { Recursion::TaskS }
    it 'should work' do
      expect(item.call(3, 15)).to eq(69)
    end
  end

  describe 'Task T' do
    let(:item) { Recursion::TaskT }
    it 'should work' do
      expect(item.call(5, 8)).to eq(126)
    end
  end

  describe 'Task U' do
    let(:item) { Recursion::TaskU }
    it 'should work' do
      expect(item.call(4)).to eq(4)
      expect(item.call(12)).to eq(21)
      expect(item.call(11)).to eq(11)
      expect(item.call(33)).to eq(33)
      expect(item.call(123)).to eq(321)
      expect(item.call(321)).to eq(123)
      expect(item.call(876_543)).to eq(345_678)
    end
  end
end
