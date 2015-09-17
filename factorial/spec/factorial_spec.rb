require 'spec_helper'
require 'factorial'

RSpec.describe 'factorial' do
  context 'with recursive' do
    it 'factorizles special case 0' do
      expect(factorial_recursive(0)).to eq 1
    end

    it 'factorizles 1' do
      expect(factorial_recursive(1)).to eq 1
    end

    it 'factorizles 2' do
      expect(factorial_recursive(2)).to eq 2
    end

    # smoke test
    #
    it 'factorizles 5' do
      expect(factorial_recursive(5)).to eq 120
    end
  end

  context 'with iterative' do
    it 'factorizles special case 0' do
      expect(factorial_iterative(0)).to eq 1
    end

    it 'factorizles 1' do
      expect(factorial_iterative(1)).to eq 1
    end

    it 'factorizles 2' do
      expect(factorial_iterative(2)).to eq 2
    end

    # smoke test
    #
    it 'factorizles 5' do
      expect(factorial_iterative(5)).to eq 120
    end
  end
end
