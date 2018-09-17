# frozen_string_literal: true

RSpec.describe Recursion do
  describe 'Task1' do
    let(:item) { Recursion::Task1 }
    it 'should work' do
      expect(item.call(1)).to eq('1')
      expect(item.call(2)).to eq('1 2')
      expect(item.call(3)).to eq('1 2 3')
      expect(item.call(4)).to eq('1 2 3 4')
    end
  end

  describe 'Task2' do
    let(:item) { Recursion::Task2 }
    it 'should work' do
      expect(item.call(0, 4)).to eq('0 1 2 3 4')
      expect(item.call(2, 5)).to eq('2 3 4 5')
      expect(item.call(8, 4)).to eq('8 7 6 5 4')
    end
  end

  describe 'Task3' do
    let(:item) { Recursion::Task3 }
    it 'should work' do
      expect(item.call(0, 2)).to eq(3)
      expect(item.call(0, 9)).to eq(10)
      expect(item.call(3, 2)).to eq(29)
    end
  end

  describe 'Task4' do
    let(:item) { Recursion::Task4 }
    it 'should work' do
      expect(item.call(0)).to eq('NO')
      expect(item.call(1)).to eq('NO')
      expect(item.call(2)).to eq('YES')
      expect(item.call(3)).to eq('NO')
      expect(item.call(4)).to eq('YES')
      expect(item.call(5)).to eq('NO')
      expect(item.call(6)).to eq('NO')
      expect(item.call(7)).to eq('NO')
      expect(item.call(8)).to eq('YES')
      expect(item.call(1022)).to eq('NO')
      expect(item.call(1023)).to eq('NO')
      expect(item.call(1024)).to eq('YES')
      expect(item.call(1025)).to eq('NO')
      expect(item.call(1026)).to eq('NO')
    end
  end

  describe 'Task5' do
    let(:item) { Recursion::Task5 }
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

  describe 'Task6' do
    let(:item) { Recursion::Task6 }
    it 'should work' do
      expect(item.call(0)).to eq('0')
      expect(item.call(5)).to eq('5')
      expect(item.call(12)).to eq('2 1')
      expect(item.call(71)).to eq('1 7')
      expect(item.call(123)).to eq('3 2 1')
      expect(item.call(961)).to eq('1 6 9')
    end
  end

  describe 'Task7' do
    let(:item) { Recursion::Task7 }
    it 'should work' do
      expect(item.call(0)).to eq('0')
      expect(item.call(5)).to eq('5')
      expect(item.call(12)).to eq('1 2')
      expect(item.call(71)).to eq('7 1')
      expect(item.call(123)).to eq('1 2 3')
      expect(item.call(961)).to eq('9 6 1')
    end
  end

  describe 'Task8' do
    let(:item) { Recursion::Task8 }
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

  describe 'Task10' do
    let(:item) { Recursion::Task10 }
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

  describe 'Task11' do
    let(:item) { Recursion::Task11 }
    it 'should work' do
      expect(item.call([])).to eq('')
      expect(item.call([2])).to eq('')
      expect(item.call([3])).to eq('3 ')
      expect(item.call([1, 2])).to eq('1 ')
      expect(item.call([1, 2, 3])).to eq('1 3 ')
      expect(item.call([31, 22, 13])).to eq('31 13 ')
    end
  end
end
